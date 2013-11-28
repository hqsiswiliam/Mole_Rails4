class Bird < ActiveRecord::Base
	validates_presence_of :name, :description
	mount_uploader :image, ImageUploader
end
