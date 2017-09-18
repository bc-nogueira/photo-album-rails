class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process convert: 'jpg'
  process tags: ['post_photo']

  version :thumbnail do
    resize_to_fit(50, 50)
  end

  version :card do
    resize_to_fill(362, 200)
  end

  def public_id
    return model.title
  end
end
