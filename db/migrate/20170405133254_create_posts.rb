class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.text :db_title
      t.text :db_content

      t.timestamps null: false
    end
  end
end
