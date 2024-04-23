# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Post.delete_all
User.delete_all
PostTag.delete_all
Tag.delete_all

usr1 = User.create(
  name: "Estefanía Adasme",
  email: "eiadasme@gmail.com",
  password: "123456789"
)

usr2 = User.create(
  name: "Pedro Villegas",
  email: "ppvillegas@gmail.com",
  password: "123456789"
)

usr3 = User.create(
  name: "Victoria Mora",
  email: "vamora@gmail.com",
  password: "123456789"
)

usr4 = User.create(
  name: "Evelyn Celis",
  email: "egcelis@gmail.com",
  password: "123456789"
)

usr5 = User.create(
  name: "Leona Perla",
  email: "leoperla@gmail.com",
  password: "123456789"
)

pst1 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 12,
  answers_count: 5,
  user_id: usr1.id
)

pst2 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 21,
  answers_count: 3,
  user_id: usr2.id
)

pst3 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 33,
  answers_count: 1,
  user_id: usr3.id
)

pst4 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 77,
  answers_count: 6,
  user_id: usr4.id
)

pst5 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 1,
  answers_count: 2,
  user_id: usr5.id
)

pst6 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 47,
  answers_count: 81,
  user_id: usr1.id
)

pst7 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 103,
  answers_count: 16,
  user_id: usr2.id
)

pst8 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 1,
  answers_count: 4,
  user_id: usr3.id
)

pst9 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 1204,
  answers_count: 99,
  user_id: usr4.id
)

pst10 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 13,
  answers_count: 2,
  user_id: usr5.id
)

tg1 = Tag.create(
  name: "#corteiz"
)

tg2 = Tag.create(
  name: "#nudeproject"
)

tg3 = Tag.create(
  name: "#stodak"
)

tg4 = Tag.create(
  name: "#bucle"
)

tg5 = Tag.create(
  name: "#ngt"
)

PostTag.create(
  tag_id: tg1.id,
  post_id: pst1.id
)

PostTag.create(
  tag_id: tg2.id,
  post_id: pst2.id
)

PostTag.create(
  tag_id: tg3.id,
  post_id: pst3.id
)

PostTag.create(
  tag_id: tg4.id,
  post_id: pst4.id
)

PostTag.create(
  tag_id: tg5.id,
  post_id: pst5.id
)

PostTag.create(
  tag_id: tg5.id,
  post_id: pst6.id
)

PostTag.create(
  tag_id: tg4.id,
  post_id: pst7.id
)

PostTag.create(
  tag_id: tg3.id,
  post_id: pst8.id
)

PostTag.create(
  tag_id: tg2.id,
  post_id: pst9.id
)

PostTag.create(
  tag_id: tg1.id,
  post_id: pst10.id
)
