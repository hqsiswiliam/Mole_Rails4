class Bird < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
