FactoryGirl.define do
  factory :area do
    id 120006
    parent_id 120006
    name '千葉県'

    factory :area_child do
      id 122076
      name '松戸市'
    end
  end

end
