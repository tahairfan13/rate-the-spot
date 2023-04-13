class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :posts, dependent: :destroy
  has_many :comments
  has_secure_password
end