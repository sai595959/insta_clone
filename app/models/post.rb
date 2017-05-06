class Post < ActiveRecord::Base
  validates :content, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  belongs_to :user

end
