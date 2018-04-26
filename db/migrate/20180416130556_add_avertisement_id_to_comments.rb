class AddAvertisementIdToComments < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :advertisement_id, :integer
  	add_index :comments, :advertisement_id
  end
end
