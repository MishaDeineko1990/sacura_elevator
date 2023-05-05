class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :tegs
      t.text :data_product

      t.timestamps
    end
  end
end
