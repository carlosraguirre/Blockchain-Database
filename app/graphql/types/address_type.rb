# frozen_string_literal: true

module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: false
    field :transaction_id, Integer, null: false
    field :address, String, null: false
    field :balance, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
