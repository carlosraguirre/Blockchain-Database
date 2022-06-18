# frozen_string_literal: true

module Types
  class TransactionType < Types::BaseObject
    field :id, ID, null: false
    field :block_id, Integer, null: false
    field :transaction_hash, String
    field :number_of_confirmations, Integer
    field :timestamp, String
    field :value, String
    field :transaction_fee, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
