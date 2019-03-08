class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :show do
    resize_to_fit 300, 300
    cloudinary_transformation radius: 10, format: :png
  end

  version :index do
    resize_to_fit 300, 300
    cloudinary_transformation width: 300, height: 300, crop: :fit, format: :png
  end

  version :avatar do
    resize_to_fit 60,60
    cloudinary_transformation width: 60, height: 60, crop: :fit, format: :png
  end
end
