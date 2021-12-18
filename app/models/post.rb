class Post < ApplicationRecord
  validates :admin_id, presence: true
  validates :description, presence: true
  validates :content, presence: true
  
  belongs_to :admin
  
  mount_uploader :content, ContentUploader
end