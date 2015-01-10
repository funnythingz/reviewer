require 'rails_helper'

RSpec.describe "reviews/show", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :reviewer => "Reviewer",
      :mail => "Mail",
      :comment => "MyText",
      :status => "Status",
      :clinic_id => 1,
      :action => "Action"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reviewer/)
    expect(rendered).to match(/Mail/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Action/)
  end
end
