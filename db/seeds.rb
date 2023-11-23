# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
require "open-uri"

Dream.destroy_all
User.destroy_all

user1 = User.create!(
  email: "wagon@gmail.com",
  password: "LeWaWa01"
)

user2 = User.create!(
  email: "wawa@gmail.com",
  password: "LeWaWa02"
)

users = [user1, user2]

10.times do

  dream = Dream.new(
    title: Faker::JapaneseMedia::CowboyBebop.episode,
    price: rand(1..1_000_000),
    availability: true,
    description: Faker::JapaneseMedia::CowboyBebop.quote,
    category: Faker::University.name,
    user: users.sample
  )

  5.times do
    file = URI.open(Faker::LoremFlickr.image(search_terms: [Faker::JapaneseMedia::CowboyBebop.episode].map { |item| item.gsub(' ', '_') }))
    dream.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: "image/png")
    dream.save
  end
end
