class AddStatusColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :api_tokens, :status, :integer, default: ApiToken::STATUSES[:inactive]
  end
end
