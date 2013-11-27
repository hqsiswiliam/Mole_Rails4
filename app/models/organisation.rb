class Organisation < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
