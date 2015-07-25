class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
	#jooyong: AT DB level, add indexes on attributes, and prevent duplicates.`
	add_index :users, :email, unique: true
  end
end
