validator(bet_param: BetRefParam) {
  fn bet_ref_spend(
    dat: BetRefDatum,
    action: BetRefAction,
    ctx: ScriptContext,
  ) -> Bool {
    let BetRefParam { oracle_pkh, bet_until, bet_reveal, bet_step } = bet_param
    let BetRefDatum { bets, previous_bet } = dat
    let ScriptContext { transaction, purpose } = ctx

    expect Spend(utxo_ref) = purpose

    let Transaction {
      inputs,
      reference_inputs,
      outputs,
      extra_signatories,
      validity_range,
      ..
    } = transaction

    expect [signer] = extra_signatories

    let Interval { lower_bound, upper_bound } = validity_range

    expect Some(own_input) = list.find(inputs, fn(input) { input.output_reference == utxo_ref })
    let Output { address: in_address, value: in_value, .. } = own_input.output

    when action is {
      Bet(guess) -> {
        expect [own_output] = filter_outputs_by_address(outputs, in_address)

        let Output { value: out_value, datum: out_datum, .. } = own_output
        expect InlineDatum(out_datum) = out_datum
        expect BetRefDatum { bets: out_bets, previous_bet: out_previous_bet }: BetRefDatum = out_datum

        expect Finite(upper_bound) = upper_bound.bound_type

        let expected_value = in_value |> add(previous_bet) |> add(bet_step) |> flatten
        let bet_value_greater = check_bet_value_greater(flatten(out_value), expected_value)

        (bet_until >= upper_bound && [(signer, guess), ..bets] == out_bets && bet_value_greater &&
          out_previous_bet == add(out_value, negate(in_value)))
      }

      Take -> {
        expect Finite(lower_bound) = lower_bound.bound_type
        expect Some((_, guess)) = list.find(bets, fn(item) {
          let (signer_item, _) = item
          signer_item == signer
        })

        expect [ref_output] = list.filter(reference_inputs, fn(item) { is_none(item.output.reference_script) })

        let Output { address: Address { payment_credential, .. }, datum: oracle_datum, .. } = ref_output.output
        expect VerificationKeyCredential(oracle_payment_key) = payment_credential
        expect InlineDatum(oracle_datum) = oracle_datum

        let oracle_answer: Int = oracle_datum
        let user_guess_diff = guess_diff(oracle_answer, guess)

        let no_continuing_outputs = is_none(filter_outputs_by_address(outputs, in_address))
        let is_guess_closest = all_bets_closest_to(oracle_answer, bets, user_guess_diff)

        (bet_reveal <= lower_bound && no_continuing_outputs && oracle_payment_key == oracle_pkh && is_guess_closest)
      }
    }
  }
}
