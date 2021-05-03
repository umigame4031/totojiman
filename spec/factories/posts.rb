FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    date { Faker::Date.in_date_period }
    area_id { Faker::Number.between(from: 2, to: 48) }
    field { Faker::Lorem.sentence }
    genre_id { Faker::Number.between(from: 2, to: 14) }
    fish { 'ブラックバス' }
    tackle { Faker::Lorem.sentence }
    text { Faker::Lorem.sentence }
    association :user 

    after(:build) do |post|
      post.image.attach(io: File.open('public/test_image.png'), filename: 'test_image.png')
    end
  end
end