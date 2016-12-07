class RemoveColumnNicknameFromUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :nickname
    remove_column :users, :url
  end
end
