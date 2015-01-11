FactoryGirl.define do
  factory :area do
    id 120006
    top_id 120006
    name '千葉県'
    top_flg true

    factory :area_child do
      id 122076
      name '松戸市'
      top_flg false
    end
  end

end
