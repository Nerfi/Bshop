class Shop < ApplicationRecord
  belongs_to :user

  #adding reviews to model
  has_many :reviews, dependent: :destroy

  #adding mount_uploader for cloudinary
   mount_uploader :photo, PhotoUploader

   #money rails
    monetize :price_cents

    #adding geocoder config
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?


    #adding rating
    accepts_nested_attributes_for :reviews

    #important when we play with money,pd: error no nos deja crear una shop
    validates :sku, presence: true, uniqueness: true

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :price, presence: true

end
