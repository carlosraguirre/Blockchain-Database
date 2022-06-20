# frozen_string_literal: true

module Types
  class BlockType < Types::BaseObject
    field :id, ID, null: false
    field :timestamp, String, null: false
    field :transactions, [Types::TransactionType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
