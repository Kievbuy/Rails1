class Article < ApplicationRecord
  validates :title, :text, presence: true
  has_many :comments
  
  def subject
    title
  end
end