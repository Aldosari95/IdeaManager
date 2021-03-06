class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.integer :role_id
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end
