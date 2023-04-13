class Post < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  has_many :comments, dependent: :destroy
end