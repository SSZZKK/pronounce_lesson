class Admin < ApplicationRecord

 validates :admin_name, presence: true
 validates :admin_id, presence: true
 validates :password, presence: true

 has_secure_password
 
 has_many :contents
end