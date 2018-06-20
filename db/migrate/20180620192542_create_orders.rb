class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.string :address_line1
      t.string :address_line2
      t.string :phone

      t.timestamps
    end
  end
end
