class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def default_url
    "http://res.cloudinary.com/dl8jzr6kn/image/upload/v1519835396/profile_default.png"
  end
end
