class CreateDishesRecipebooks < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes_recipebooks do |t|
      t.integer :recipebook_id
      t.integer :dish_id
    end
  end
end
