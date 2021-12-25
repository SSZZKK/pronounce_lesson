class Medium < ApplicationRecord
    
  validates :admin_id, presence: true
  
  belongs_to :admin
  
  has_many :names
  has_many :languages
  has_many :categories
  
end
