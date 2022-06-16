class Block < ApplicationRecord
  has_many :transactions
  belongs_to :transaction
end
