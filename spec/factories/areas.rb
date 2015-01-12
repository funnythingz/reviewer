FactoryGirl.define do
  factory :area do
    id 130001
    top_id 130001
    name '東京都'
    top_flg true

    factory :area_child do
      id 131016
      name '千代田区'
      top_flg false
    end
  end

end
