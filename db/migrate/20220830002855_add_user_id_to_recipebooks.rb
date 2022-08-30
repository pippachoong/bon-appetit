class AddUserIdToRecipebooks < ActiveRecord::Migration[5.2]
  def change
    add_column :recipebooks, :user_id, :integer
  end
end
