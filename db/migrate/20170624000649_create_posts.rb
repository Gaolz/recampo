class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :topic, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :content
      t.integer :post_number
      t.integer :votes_up, default: 0
      t.integer :votes_down, default: 0
      
      t.timestamps null: false
    end
  end
end
