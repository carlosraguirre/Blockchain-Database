class Transaction < ApplicationRecord
  belongs_to :block
  has_many :addresses
end
