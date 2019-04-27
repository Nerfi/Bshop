class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :description
      #t.integer :price
      #ojo con la linea n8, puede que tengamos que borrar la linea 7
      add_monetize :shops, :price, currency: { present: false }

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
