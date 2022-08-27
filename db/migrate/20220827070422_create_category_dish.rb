class CreateCategoryDish < ActiveRecord::Migration[5.2]
  def change
    create_table :category_dishes do |t|
      t.integer :category_id
      t.integer :dish_id
    end
  end
end
