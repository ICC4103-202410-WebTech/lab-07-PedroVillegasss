class Post < ApplicationRecord
  belongs_to :user
  has_many :tags, :through => :post_tags

  validates :title, presence: { message: "The post should have a title" }
  validates :content, presence: { message: "The post should have content" }
  validates :user_id, presence: { message: "The post should belong to a user" }
  validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "The post should have equal or greater than 0 answers_count" }
  validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "The post should have equal or greater than 0 likes_count" }

  before_validation :set_published_at_to_default

  private
  def set_published_at_to_default
    self.published_at = Time.current if published_at.nil?
  end
end
