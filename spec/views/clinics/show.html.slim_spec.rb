require 'rails_helper'

RSpec.describe "clinics/show", :type => :view do
  before(:each) do
    @clinic = create(:clinic)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Group/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Postal code/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Mail/)
  end
end
