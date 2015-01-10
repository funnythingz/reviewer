
require 'faker'

FactoryGirl.define do
  factory :review do
    reviewer "hrtn"
    mail Faker::Internet.email
    status "published"
    clinic_id 1
    action "good"
    comment "けいたん歯科は最高なんだお！"

    factory :review_draft do
      status "draft"
    end

    factory :review_bad do
      action "bad"
      comment "けいたん歯科はほんとにうんこですね。ぼったくりですね。虫歯どころか全部抜かれやがったんだぜ！どういうことなんだってばよ！"
    end
  end
end
