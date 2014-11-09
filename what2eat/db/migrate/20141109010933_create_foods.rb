class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.float :energe
      t.integer :number

      t.timestamps
    end
  end
end
