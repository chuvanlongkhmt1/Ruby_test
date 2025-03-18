class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    belongs_to :groupuser  
    # foreign_key: :groupuser_id
end
