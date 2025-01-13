validator(init_input: OutputReference) {
  fn conditional_spend(state: State, rdr: Data, ctx: ScriptContext) -> Bool {
    let ScriptContext { transaction, purpose } = ctx

    expect Spend(own_out_ref) = purpose

    let Transaction {
      inputs,
      reference_inputs,
      outputs,
      mint,
      validity_range,
      extra_signatories,
      certificates,
      ..
    } = transaction

    // Find the specific input that matches the reference output
    expect Some(own_input) =
      list.find(inputs, fn(input) { input.output_reference == own_out_ref })

    let Input {
      output: Output { address: in_address, value: in_value, .. },
      ..
    } = own_input

    // Retrieve payment credential from input address
    let Address { payment_credential, .. } = in_address

    expect ScriptCredential(own_policy) = payment_credential

    let State { owner, redelegation_condition, .. } = state

    // Unpack validity range bounds
    let Interval { lower_bound, upper_bound } = validity_range
    let (lower, upper) = (expect Finite(upper) = upper_bound, expect Finite(lower) = lower_bound)

    // Validate owner type
    validate_owner(owner, extra_signatories, inputs, rdr, in_value)

    // Check that the input contains the initialization NFT
    expect quantity_of(in_value, own_policy, "") == 1

    // Validate transaction conditions
    let tx_condition_runner = create_tx_condition_runner(inputs, reference_inputs, outputs, mint, certificates)

    expect validate_redelegation_condition(redelegation_condition, tx_condition_runner)

    // Check for decommissioning the validator
    validate_decommissioning(mint, outputs, in_address)
  }

  fn validate_owner(owner: Owner, extra_signatories: List<Credential>, inputs: List<Input>, rdr: Data, in_value: Value) -> Bool {
    expect
      when owner is {
        PKH(signer) -> list.has(extra_signatories, signer)
        NFT(policy, token_name) -> {
          expect nft_input_owner: OutputReference = rdr
          expect Some(nft_input) = list.find(inputs, fn(input) { input.output_reference == nft_input_owner })
          quantity_of(nft_input.output.value, policy, token_name) == 1
        }
        Receipt(token_name) -> {
          let x = mint |> from_minted_value |> quantity_of(own_policy, token_name)
          x == -1
        }
      }
  }

  fn create_tx_condition_runner(inputs: List<Input>, reference_inputs: List<Input>, outputs: List<Output>, mint: Value, certificates: List<Certificate>) -> fn(TxCondition) -> Bool {
    fn cond_runner(cond: TxCondition) -> Bool {
      when cond is {
        Mints(policy, token_name, amount) -> {
          let x = mint |> from_minted_value |> quantity_of(policy, token_name)
          x == amount
        }
        IsAfter(after) -> after > lower && lower_inclusive
        IsBefore(before) -> before < upper && upper_inclusive
        InputsCondition(input_conditions) -> validate_inputs(input_conditions, inputs)
        ReferenceInputsCondition(ref_conditions) -> validate_inputs(ref_conditions, reference_inputs)
        OutputsCondition(out_conditions) -> validate_outputs(out_conditions, outputs)
        StakesTo(pool) -> {
          let expected_cert = CredentialDelegation {
            delegator: Inline(ScriptCredential(own_policy)),
            delegatee: pool,
          }
          list.any(certificates, fn(cert) { expected_cert == cert })
        }
      }
    }
    cond_runner
  }

  fn validate_redelegation_condition(redelegation_condition: StakeCondition, tx_condition_runner: fn(TxCondition) -> Bool) -> Bool {
    expect when redelegation_condition is {
      Is(tx_cond) -> tx_condition_runner(tx_cond)
      Not(tx_cond) -> !tx_condition_runner(tx_cond)
      And(conds) -> validate_stake_conditions(conds, True, tx_condition_runner)
      Or(conds) -> validate_stake_conditions(conds, False, tx_condition_runner)
    }
  }

  fn validate_decommissioning(mint: Value, outputs: List<Output>, in_address: Address) -> Bool {
    or {
      // Allowing decommissioning of the validator
      mint |> from_minted_value |> quantity_of(own_policy, "") |> fn(a) { a == -1 },
      {
        expect Some(Output { datum: InlineDatum(out_datum), .. }) = list.find(outputs, fn(output) {
          output.address == in_address && quantity_of(output.value, own_policy, "") == 1
        })

        expect State { stake_registration, .. }: State = out_datum

        // Ensure time ranges align
        let time_range = (upper - lower) / 2000
        stake_registration == lower + time_range && time_range >= 180
      },
    }
  }

  // Additional functions (e.g., validate_inputs, validate_outputs, etc.) remain unchanged.
}
