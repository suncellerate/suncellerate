class AddAccountIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_id, :integer, null: false
  end
end
