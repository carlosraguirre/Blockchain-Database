class Transaction < ApplicationRecord
  # has_one :block
  belongs_to :block
  # has_many :addresses
  # belongs_to :address
end
