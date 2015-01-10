require 'rails_helper'

RSpec.describe "reviews/new", :type => :view do
  before(:each) do
    assign(:review, Review.new(
      :reviewer => "MyString",
      :mail => "MyString",
      :comment => "MyText",
      :status => "MyString",
      :clinic_id => 1,
      :action => "MyString"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_reviewer[name=?]", "review[reviewer]"

      assert_select "input#review_mail[name=?]", "review[mail]"

      assert_select "textarea#review_comment[name=?]", "review[comment]"

      assert_select "input#review_status[name=?]", "review[status]"

      assert_select "input#review_clinic_id[name=?]", "review[clinic_id]"

      assert_select "input#review_action[name=?]", "review[action]"
    end
  end
end
