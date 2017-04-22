class Post < ActiveRecord::Base
  validates :content, presence: true
  mount_uploader :photo, PhotoUploader

end
