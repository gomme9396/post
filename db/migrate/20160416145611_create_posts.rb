class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string "DBtitle"
      t.string "DBcontent"
      
      t.timestamps null: false
    end
  end
end
