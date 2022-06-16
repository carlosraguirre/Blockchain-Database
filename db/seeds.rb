# 5.times do
#   Block.create(timestamp: Faker::Date.in_date_period(year: 2022))
# end
# 5.times do
#   Transaction.create(transaction_hash: Faker::Crypto.sha256)
  # Transaction.create(number_of_confirmations: Faker::Number.within(range: 1..7))
  # Transaction.create(timestamp: Faker::Date.in_date_period(year: 2022))
  # Transaction.create(value: Faker::Number.decimal(l_digits: 4, r_digits: 2))
  # Transaction.create(transaction_fee: Faker::Number.decimal(r_digits: 2))
# end
# 5.times do
#   Address.create(address: Faker::Crypto.md5)
#   Address.create(balance: Faker::Number.within(range: 1..99000))
end