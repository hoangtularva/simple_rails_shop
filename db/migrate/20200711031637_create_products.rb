class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.text :description
      t.integer :price
      t.integer :year

      t.timestamps
    end
  end
end
