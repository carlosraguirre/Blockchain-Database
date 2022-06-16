5.times do
  block = Block.create(timestamp: Faker::Date.in_date_period(year: 2022))
  5.times do
    "test"
    block.transactions.create(transaction_hash: Faker::Crypto.sha256)
    block.transactions.create(number_of_confirmations: Faker::Number.within(range: 1..7))
    block.transactions.create(timestamp: Faker::Date.in_date_period(year: 2022))
    block.transactions.create(value: Faker::Number.decimal(l_digits: 4, r_digits: 2))
    block.transactions.create(transaction_fee: Faker::Number.decimal(r_digits: 2))
    5.times do
      block.addresses.create(address: Faker::Crypto.md5)
      block.addresses.create(balance: Faker::Number.within(range: 1..99000))
    end
  end
end