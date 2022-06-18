5.times do
  block = Block.create!(timestamp: Faker::Time.between(from: DateTime.now - 60, to: DateTime.now, format: :default))
  5.times do
    transaction = block.transactions.create!(
      transaction_hash: Faker::Crypto.sha256,
      number_of_confirmations: Faker::Number.within(range: 1..7),
      timestamp: Faker::Time.between(from: DateTime.now - 60, to: DateTime.now,
      format: :default),
      value: Faker::Number.decimal(l_digits: 4, r_digits: 2),
      transaction_fee: Faker::Number.decimal(l_digits: 0, r_digits: 2)
      )
    5.times do
      transaction.addresses.create!([
        address: Faker::Crypto.md5,
        balance: Faker::Number.within(range: 1..99000)
        ])
    end
  end
end