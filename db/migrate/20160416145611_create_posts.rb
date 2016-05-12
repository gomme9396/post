class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string "DBtitle" # DB의 형태와 이름을 정해줌
      t.string "DBcontent" 
      
      t.timestamps null: false
    end
  end
end
