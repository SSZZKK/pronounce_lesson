class Admin < ApplicationRecord

 validates :user, presence: true
 validates :admin_id, presence: true

 has_secure_password
end