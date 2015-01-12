require 'faker'

FactoryGirl.define do
  factory :target do
    name "なんとかラーメン"
    group "なんとかグループ"
    area_id "131016"
    postal_code "123-4567"
    address "東京都千代田区のどこか"
    tel '12-3456-7890'
    url Faker::Internet.url
    mail Faker::Internet.email
  end
end
