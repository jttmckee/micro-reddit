class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, length:{maximum:255}, presence:true
  validates :link, length:{maximum:255}, format:{with:URI.regexp},
    presence:true
end
