class Supplier < ApplicationRecord
  validates :supplier_name,presence: true
  validates :nit, presence: true, format: { with: /\A\d{9}-?\d?\z/, message: "debe tener el formato 9 dígitos un guión medio (-) y un dígito opcional" }
  validates :contact_person_number, presence: true
  validates :count_number, presence: true
  self.primary_key = :nit
  self.per_page = 10

  belongs_to :bank, optional: true
  def to_param
    nit
  end
end
