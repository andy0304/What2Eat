class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :rid
      t.text :rname
      t.float :rcalorie
      t.float :rrating
      t.text :rcategory

      t.timestamps
    end
  end
end
