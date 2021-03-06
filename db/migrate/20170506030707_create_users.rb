class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :email_lower
      t.string :username
      t.string :username_lower
      t.string :password_digest
      t.text :bio

      t.timestamps null: false
    end
  end
end
