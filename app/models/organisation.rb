class Organisation < ActiveRecord::Base
	validates_presence_of :title, :description
	mount_uploader :image, ImageUploader
end
