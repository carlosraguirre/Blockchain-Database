class AddressSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :transaction
end
