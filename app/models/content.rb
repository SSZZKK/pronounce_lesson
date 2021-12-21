class Content < ApplicationRecord
    
  validates :admin_id, presence: true
  validates :description, presence: true
  validates :subject, presence:true #作品名
  validates :language, presence: true
  validates :video, presence: true
  
  belongs_to :admin
  
  
  mount_uploader :video, VideoUploader
end
