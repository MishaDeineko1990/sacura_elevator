class CreateProductsGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :products_groups do |t|
      t.string :name
      t.string :number_group

      t.timestamps
    end
  end
end
