class Admin < ApplicationRecord

 validates :admin_name, presence: true
 validates :admin_id, presence: true

 has_secure_password
 
 has_many :posts
end