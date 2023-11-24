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

nicolas = User.create!(
  email: "nicolas@gmail.com",
  password: "nicolas"
)

anahita = User.create!(
  email: "anahita@gmail.com",
  password: "anahita"
)

dream = Dream.new(
    title: "Balck Friday",
    price: 1000,
    availability: true,
    description: Faker::JapaneseMedia::CowboyBebop.quote,
    category: "Nightmare",
    user: anahita
  )
picture_urls = []
picture_urls.each do |url|
    file = URI.open(url)
    dream.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: "image/png")
    dream.save
end
