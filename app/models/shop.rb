class Shop < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :price, presence: true

  #adding mount_uploader for cloudinary
   mount_uploader :photo, PhotoUploader
end
