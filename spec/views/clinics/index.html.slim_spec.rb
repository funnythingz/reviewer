require 'rails_helper'

RSpec.describe "clinics/index", :type => :view do
  before(:each) do
    assign(:clinics, [
      Clinic.create!(
        :name => "Name",
        :group => "Group",
        :area_id => "",
        :postal_code => "Postal Code",
        :address => "Address",
        :tel => "Tel",
        :url => "Url",
        :mail => "Mail"
      ),
      Clinic.create!(
        :name => "Name",
        :group => "Group",
        :area_id => "",
        :postal_code => "Postal Code",
        :address => "Address",
        :tel => "Tel",
        :url => "Url",
        :mail => "Mail"
      )
    ])
  end

  it "renders a list of clinics" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
  end
end
