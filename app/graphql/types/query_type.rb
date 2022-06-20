module Types
  class QueryType < Types::BaseObject

    # Query for an individual block
    field :block, Types::BlockType, null: false do
      argument :id, ID, required: true
    end

    def block(id:)
      Block.find(id)
    end

  # query {
  #   block(id: 1) {
  #     id
  #     timestamp
  #     transactions {
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
  #   }
  # }
  # ---------------------------------------------------------------------------

  # Query for an individual address
    field :address, Types::AddressType, null: false do
      argument :id, ID, required: true
    end

    def address(id:)
      Address.find(id)
    end

  # query {
  #   address(id: 1) {
  #     id
  #     transactionId
  #     address
  #     balance
  #   }
  # }
  # ---------------------------------------------------------------------------

  # Query for an individual transaction
    field :transaction, Types::TransactionType, null: false do
      argument :id, ID, required: true
    end

    def transaction(id:)
      Transaction.find(id)
    end

  # query {
  #   transaction(id: 1) {
  #     id
  #     blockId
  #     transactionHash
  #     numberOfConfirmations
  #     timestamp
  #     value
  #     transactionFee
  #     addresses {
  #       id
  #       transactionId
  #       address
  #       balance
  #     }
  #   }
  # }
  # ---------------------------------------------------------------------------
  
  end
end



