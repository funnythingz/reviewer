require 'rails_helper'

RSpec.describe "clinics/index", :type => :view do
  before(:each) do
    assign(:clinics, [create(:clinic), create(:clinic)])
  end

  it "renders a list of clinics" do
    render
    assert_select "tr>td", :text => "けいたん歯科".to_s, :count => 2
    assert_select "tr>td", :text => "けいたんグループ".to_s, :count => 2
    assert_select "tr>td", :text => "100".to_s, :count => 2
    assert_select "tr>td", :text => "123-4567".to_s, :count => 2
    assert_select "tr>td", :text => "千葉県柏市のどこか".to_s, :count => 2
    assert_select "tr>td", :text => "12-3456-7890".to_s, :count => 2
  end
end
