class AddSkuToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :sku, :string
  end
end
