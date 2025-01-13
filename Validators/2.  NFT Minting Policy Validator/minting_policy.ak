use aiken/collection.{list}
use cardano/assets
use cardano/transaction.{Transaction}

validator mint_nft(redeemer: List<ByteArray>, self: Transaction) {
  let token_ids = self.mint |> assets.flatten |> list.map(fn(t) { t.1st })

  (list.is_unique(token_ids) && list.length(token_ids) <= 5)?
    trace @"Mint Successful"
  else
    fail @"Invalid Mint: Duplicate IDs or Exceeds Limit"
}
