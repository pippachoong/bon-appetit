class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :image
      t.integer :servings
      t.string :cooking_time
      t.text :ingredients
      t.text :methods

      t.timestamps
    end
  end
end
