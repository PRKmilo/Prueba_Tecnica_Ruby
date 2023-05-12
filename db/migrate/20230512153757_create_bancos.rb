class CreateBancos < ActiveRecord::Migration[7.0]
  def change
    create_table :bancos do |t|
      t.string :title

      t.timestamps
    end
  end
end
