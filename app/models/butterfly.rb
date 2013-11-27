class Butterfly < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
