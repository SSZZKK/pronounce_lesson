class Medium < ApplicationRecord
    
  validates :admin_id, presence: true
  validates :description, presence: true
  validates :language, presence:true
  validates :language, presence: true
  validates :video, presence: true
  validates :category, presence: true
  
end
