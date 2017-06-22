class CreateApiTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :api_tokens do |t|
      t.string :value
      t.datetime :expires_at
      t.string :owner_type
      t.integer :owner_id

      t.timestamps
    end

    add_index :api_tokens, [:owner_id, :owner_type]
  end
end
