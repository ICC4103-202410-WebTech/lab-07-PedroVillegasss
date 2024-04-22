class Post < ApplicationRecord
  belongs_to :user
  has_many :tags, :through => :post_tags
end
