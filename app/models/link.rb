class Link < ActiveRecord::Base
  attr_accessible :folder_id, :name
  belongs_to :folder
  # mount_uploader :image, ImageUploaderend
end