class Tag < ApplicationRecord
  has_many :post_tags
  has_many :posts, :through => :post_tags
  validates :name, presence: true, uniqueness: { message: "The tag should have a name and must be unique" }
end
