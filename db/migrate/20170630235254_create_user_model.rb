class CreateUserModel < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :type
      t.string :reset_password_token
      t.string :email,              null: false, default: ""
      t.string :password_digest,    null: false, default: ""
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
