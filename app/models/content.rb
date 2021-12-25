class Content < ApplicationRecord
    
  validates :admin_id, presence: true
  validates :description, presence: true
  validates :medium_id, presence:true
  validates :language, presence: true
  validates :video, presence: true
  
  belongs_to :admin
  
  
  mount_uploader :video, VideoUploader
end
