class CreateRecipebooks < ActiveRecord::Migration[5.2]
  def change
    create_table :recipebooks do |t|
      t.string :name
      t.text :image

      t.timestamps
    end
  end
end
