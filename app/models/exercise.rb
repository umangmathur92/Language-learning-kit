class Exercise < ActiveRecord::Base
	belongs_to :tutorial
	mount_uploader :video , VideoUploader
end
