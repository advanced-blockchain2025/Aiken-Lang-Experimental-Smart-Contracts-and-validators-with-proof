validator royalty_distribution(redeemer: Int) {
  let min_royalty = 5

  (redeemer >= min_royalty)?
    trace @"Royalty Distributed"
  else
    fail @"Insufficient Royalty"
}
