class Article < ApplicationRecord
  validates :title, :text, presence: true
  has_many :comments
  #belongs_to :user
end