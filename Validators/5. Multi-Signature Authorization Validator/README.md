use cardano/transaction.{Transaction}

validator multisig_transfer(self: Transaction) {
  let signers = self.inputs |> list.map(fn(i) { i.signer })

  (list.length(signers) >= 2)?
    trace @"Transfer Authorized"
  else
    fail @"Multisig Requirement Not Met"
}
