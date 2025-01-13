use cardano/transaction.{Transaction}

validator transfer_ownership(redeemer: ByteArray, self: Transaction) {
  let owner = self.inputs |> list.head |> fn(i) { i.signer }

  (owner == redeemer)?
    trace @"Ownership Transferred Successfully"
  else
    fail @"Unauthorized Transfer Attempt"
}
