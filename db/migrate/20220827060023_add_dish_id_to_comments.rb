class AddDishIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :dish_id, :integer
  end
end
