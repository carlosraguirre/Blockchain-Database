# frozen_string_literal: true

module Types
  class TransactionType < Types::BaseObject
    field :id, ID, null: true
    field :block_id, Integer, null: true
    field :transaction_hash, String, null: true
    field :number_of_confirmations, Integer, null: true
    field :timestamp, String, null: true
    field :value, String, null: true
    field :transaction_fee, String, null: true
    field :addresses, [Types::AddressType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
