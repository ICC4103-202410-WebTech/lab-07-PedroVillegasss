class Tag < ApplicationRecord
  has_many :posts, :through => :post_tags

  validates :name, presence: true, uniqueness: true, message: "The tag should have a name and must be unique"
end
