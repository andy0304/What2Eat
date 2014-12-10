class CreateWhat2eatHomepages < ActiveRecord::Migration
  def change
    create_table :what2eat_homepages do |t|

      t.timestamps
    end
  end
end
