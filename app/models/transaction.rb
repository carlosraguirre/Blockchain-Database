class Transaction < ApplicationRecord
  belongs_to :block
  has_many :addresses
  accepts_nested_attributes_for :addresses
end