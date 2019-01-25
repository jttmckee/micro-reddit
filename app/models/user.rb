class User < ApplicationRecord
  has_many :posts
  has_many :comments
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, length: {minimum: 6, maximum:50}
  validates :email, length: {maximum:50}, format: {with: EMAIL_REGEX},
    uniqueness: {case_sensitive:false}
end
