class AddPriceToShops < ActiveRecord::Migration[5.2]
  def change
  add_monetize :shops, :price, currency: { present: false }

  end
end
