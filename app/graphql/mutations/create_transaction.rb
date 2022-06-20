class Mutations::CreateTransaction < Mutations::BaseMutation
  argument :transaction_hash, String, required: true
  argument :number_of_confirmations, Integer, required: true
  argument :timestamp, String, required: true
  argument :value, String, required: true
  argument :transaction_fee, String, required: true

  field :transactions, Types::TransactionType, null: false
  field :errors, [String], null: false

  def resolve(transaction_hash:, number_of_confirmations:, timestamp:, value:, transaction_fee:)
    transaction = Transaction.new(transaction_hash: transaction_hash, number_of_confirmations: number_of_confirmations, timestamp: timestamp, value: value, transaction_fee: transaction_fee)
    if transaction.save
      {
        transaction: transaction,
        errors: [],
      }
    else
      {
        transaction: nil,
        errors: transaction.errors.full_messages
      }
    end
  end
end


# Run mutation in GraphiQl:

# mutation {
#   createTransaction(input: {
#     transactionHash: "dkf94830fjakf020447934cnw90",
#     numberOfConfirmations: 2,
#     timestamp: "Sun, 19 June 2022 10:28",
#     value: "12591.06",
#     transactionFee: ".99"
#   }) {
#     transaction {
#       id
#       blockId
#       transactionHash
#       numberOfConfirmations
#       timestamp
#       value
#       transactionFee
#       addresses {
#         id
#         transactionId
#         address
#         balance
#       }
#     }
#     errors
#   }
# }