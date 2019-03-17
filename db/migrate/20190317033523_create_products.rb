class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :title
      t.string :description
      t.string :availability
      t.string :condition
      t.decimal :price, :precision => 14, default: 0
      t.string :brand

      t.timestamps
    end
  end
end
