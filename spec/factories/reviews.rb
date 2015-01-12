
require 'faker'

FactoryGirl.define do
  factory :review do
    reviewer "hrtn"
    mail Faker::Internet.email
    published true
    target_id 1
    action "good"
    comment "最高ですね！"

    factory :review_draft do
      published false
    end

    factory :review_bad do
      action "bad"
      comment "うんこですね！くそですね！"
    end
  end
end
