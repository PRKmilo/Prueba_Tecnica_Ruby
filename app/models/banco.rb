class Banco < ApplicationRecord
  validates :title, length: { maximum: 50},presence: true, uniqueness: true 
end
