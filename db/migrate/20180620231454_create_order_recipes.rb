class CreateOrderRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :order_recipes do |t|
      t.references :order, foreign_key: true
      t.references :recipe, foreign_key: true
      t.boolean :crust

      t.timestamps
    end
  end
end
