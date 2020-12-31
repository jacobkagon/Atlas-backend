class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :reviews
    has_many :countries, through: :reviews
    has_many :favorites
    has_many :countries, through: :favorites

    validates :username, presence: true 
    validates :password, presence: true
end
