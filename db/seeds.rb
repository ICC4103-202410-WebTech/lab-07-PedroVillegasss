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

pst1 = Post.create!(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 12,
  answers_count: 5,
  user: usr1
)

pst2 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 21,
  answers_count: 3,
  user: usr2
)

pst3 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 33,
  answers_count: 1,
  user: usr3
)

pst4 = Post.create(title: "Post title", content: "Post content", published_at: Time.now, likes_count: 77, answers_count: 6, user: usr1)

pst5 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 1,
  answers_count: 2,
  user: usr5
)

pst6 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 47,
  answers_count: 81,
  user: usr1
)

pst7 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 103,
  answers_count: 16,
  user: usr2
)

pst8 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 1,
  answers_count: 4,
  user: usr3
)

pst9 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 1204,
  answers_count: 99,
  user: usr4
)

pst10 = Post.create(
  title: "Post title",
  content: "Post content",
  published_at: Time.now,
  likes_count: 13,
  answers_count: 2,
  user: usr5
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

pst1.tags << tg1
pst2.tags << tg2
pst3.tags << tg3
pst4.tags << tg4
pst5.tags << tg5
pst6.tags << tg5
pst7.tags << tg4
pst8.tags << tg3
pst9.tags << tg2
pst10.tags << tg1
