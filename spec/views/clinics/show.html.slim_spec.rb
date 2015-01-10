require 'rails_helper'

RSpec.describe "clinics/show", :type => :view do
  before(:each) do
    @clinic = assign(:clinic, Clinic.create!(
      :name => "Name",
      :group => "Group",
      :area_id => "",
      :postal_code => "Postal Code",
      :address => "Address",
      :tel => "Tel",
      :url => "Url",
      :mail => "Mail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Group/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Mail/)
  end
end
