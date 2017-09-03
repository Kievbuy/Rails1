require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  validates :title, :text, presence: true
  has_many :comments
end