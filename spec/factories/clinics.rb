require 'faker'

FactoryGirl.define do
  factory :clinic do
    name "けいたん歯科"
    group "けいたんグループ"
    area_id "100"
    postal_code "123-4567"
    address "千葉県柏市のどこか"
    tel '12-3456-7890'
    url Faker::Internet.url
    mail Faker::Internet.email
  end
end
