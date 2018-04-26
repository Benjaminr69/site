class TableAdvertisements < ActiveRecord::Migration[5.1]
  def change
  	create_table :advertisements
  	add_column :advertisements, :title, :strings
  	add_column :advertisements, :content, :text
  	add_column :advertisements, :price, :float
  end
end
