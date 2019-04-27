class Shop < ApplicationRecord
  belongs_to :user

  #adding reviews to model
  has_many :reviews, dependent: :destroy

  #adding mount_uploader for cloudinary
   mount_uploader :photo, PhotoUploader

   #money rails
    monetize :price_cents

    #important when we play with money, erorr no nos deja crear una shop
    validates :sku, presence: true, uniqueness: true

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :price, presence: true

end
