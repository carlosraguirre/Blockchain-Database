class Address < ApplicationRecord
  has_one :transaction
  belongs_to :transaction
end
