class Gram < ApplicationRecord
    validates :message, presence: true
    validates :photos, presence: true
    has_many :comments

    mount_uploader :photos, PhotosUploader


    belongs_to :user
   
end