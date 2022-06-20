class BlockSerializer < ActiveModel::Serializer
  attributes :id, :timestamp, :transactions
end
