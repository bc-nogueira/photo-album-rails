class Photo < ApplicationRecord
  validates :title, :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
