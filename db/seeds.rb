require "faker"
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
dream_bf = Dream.new(
  title: "Black Friday",
  price: 1000,
  availability: true,
  description: Faker::JapaneseMedia::CowboyBebop.quote,
  category: "Nightmares",
  user: anahita
  )
picture_urls = ["https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/cgmebfxmji5rjevkised.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/xxejtshwmrsmxolltxof.webp",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/z5gdk1jev6cs7ggfadfz.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833089/dreams_r_us/djsoyvw33oqvdltldk4u.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833089/dreams_r_us/yidcmu4xewymlwuqzafa.jpg"]
picture_urls.each do |url|
  file = URI.open(url)
  dream_bf.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: 'image/jpg')
  dream_bf.save
end

dream_ast = Dream.new(
  title: "Australie",
  price: 250,
  availability: true,
  description: Faker::JapaneseMedia::CowboyBebop.quote,
  category: "Travel",
  user: anahita
  )
picture_urls = ["https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833092/dreams_r_us/jzb6dtls4xqfbvljsxdz.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833091/dreams_r_us/vu4hixysej8db6lvllyi.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/z0nmyxfqwvraudivw4ig.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/g3o3tysqtdqswy5fy3sj.jpg",
                "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700832809/dreams_r_us/gec7g8khp5v4flmjdkpj8no2mq1k.jpg"]
picture_urls.each do |url|
  file = URI.open(url)
  dream_ast.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: 'image/jpg')
  dream_ast.save
end

dream_mtn = Dream.new(
  title: "Moutain escape",
  price: 650,
  availability: true,
  description: Faker::JapaneseMedia::CowboyBebop.quote,
  category: "Astral",
  user: anahita
  )
  picture_urls = ["https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833088/dreams_r_us/b4gn0deaneczqo0eiziv.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833089/dreams_r_us/o9vbez8nx1bvrfhk8oxa.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833091/dreams_r_us/hnq6adzrfgzn9pgbs1bw.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833087/dreams_r_us/imb67an08ldijwi2jh1r.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/kihxzic1h0iourmcxqto.webp"]
picture_urls.each do |url|
  file = URI.open(url)
  dream_mtn.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: 'image/jpg')
  dream_mtn.save
end

dream_teath = Dream.new(
  title: "J'ai les dents qui tombent!!!!!!!!!!",
  price: 2000,
  availability: true,
  description: Faker::JapaneseMedia::CowboyBebop.quote,
  category: "Falling",
  user: anahita
  )
  picture_urls = ["https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/pumrhsjcp2s2vz209kkd.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833089/dreams_r_us/o9vbez8nx1bvrfhk8oxa.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833091/dreams_r_us/hnq6adzrfgzn9pgbs1bw.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833087/dreams_r_us/imb67an08ldijwi2jh1r.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/kihxzic1h0iourmcxqto.webp"]
picture_urls.each do |url|
  file = URI.open(url)
  dream_teath.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: 'image/jpg')
  dream_teath.save
end

dream_middle_earth = Dream.new(
  title: "Aragorn dead LoL xD",
  price: 100,
  availability: true,
  description: Faker::JapaneseMedia::CowboyBebop.quote,
  category: "Initiative",
  user: anahita
  )
  picture_urls = ["https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833088/dreams_r_us/hx5lyv5ehfycf92lvagn.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833089/dreams_r_us/o9vbez8nx1bvrfhk8oxa.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833091/dreams_r_us/hnq6adzrfgzn9pgbs1bw.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833087/dreams_r_us/imb67an08ldijwi2jh1r.jpg",
                  "https://res.cloudinary.com/dcvyn1qtm/image/upload/v1700833086/dreams_r_us/kihxzic1h0iourmcxqto.webp"]
picture_urls.each do |url|
  file = URI.open(url)
  dream_middle_earth.photos.attach(io: file, filename: "#{Faker::JapaneseMedia::CowboyBebop.episode}.png", content_type: 'image/jpg')
  dream_middle_earth.save
end
