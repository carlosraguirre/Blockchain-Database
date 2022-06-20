class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :transaction_hash

  belongs_to :block
end
