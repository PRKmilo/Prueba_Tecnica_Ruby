class Bank < ApplicationRecord
  validates :title, length: { maximum: 50},presence: true, uniqueness: true 
  has_many :suppliers
end
