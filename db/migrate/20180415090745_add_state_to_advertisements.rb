class AddStateToAdvertisements < ActiveRecord::Migration[5.1]
  def change
  	add_column :advertisements, :state, :string
  end
end
