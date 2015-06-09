class Photo < ActiveRecord::Base

  mount_uploader :name, AvatarUploader

end
