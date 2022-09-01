class AddRemarkToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :remark, :text
  end
end
