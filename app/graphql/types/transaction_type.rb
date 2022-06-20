# frozen_string_literal: true

module Types
  class TransactionType < Types::BaseObject
    field :id, ID, null: true
    field :block_id, Integer, null: true
    field :transaction_hash, String, null: false
    field :number_of_confirmations, Integer, null: false
    field :timestamp, String, null: false
    field :value, String, null: false
    field :transaction_fee, String, null: false
    field :addresses, [Types::AddressType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
