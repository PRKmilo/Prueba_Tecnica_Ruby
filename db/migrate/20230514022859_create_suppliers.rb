class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers, id: false, primary_key: :nit do |t|
      t.string :supplier_name
      t.string :nit
      t.string :contact_person_name
      t.string :contact_person_number
      t.string :count_number

      t.timestamps
    end
  end
end
