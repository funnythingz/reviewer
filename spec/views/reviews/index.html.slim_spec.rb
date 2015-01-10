require 'rails_helper'

RSpec.describe "reviews/index", :type => :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :reviewer => "Reviewer",
        :mail => "Mail",
        :comment => "MyText",
        :status => "Status",
        :clinic_id => 1,
        :action => "Action"
      ),
      Review.create!(
        :reviewer => "Reviewer",
        :mail => "Mail",
        :comment => "MyText",
        :status => "Status",
        :clinic_id => 1,
        :action => "Action"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "Reviewer".to_s, :count => 2
    assert_select "tr>td", :text => "Mail".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Action".to_s, :count => 2
  end
end
