class ChangeDishCategoriesToCategoriesDishes < ActiveRecord::Migration[5.2]
  
  def change
  rename_table :dish_categories, :categories_dishes
  end
end
