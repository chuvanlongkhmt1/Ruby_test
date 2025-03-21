class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_secure_password
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    # belongs_to :groupuser  
    # foreign_key: :groupuser_id
end
