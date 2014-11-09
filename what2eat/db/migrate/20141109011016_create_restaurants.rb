class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :rname
      t.integer :number

      t.timestamps
    end
  end
end
