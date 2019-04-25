class RemovePriceFromShops < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :price, :integer
  end
end
