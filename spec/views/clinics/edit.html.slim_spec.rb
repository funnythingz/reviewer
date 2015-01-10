require 'rails_helper'

RSpec.describe "clinics/edit", :type => :view do
  before(:each) do
    @clinic = create(:clinic)
  end

  it "renders the edit clinic form" do
    render

    assert_select "form[action=?][method=?]", clinic_path(@clinic), "post" do

      assert_select "input#clinic_name[name=?]", "clinic[name]"

      assert_select "input#clinic_group[name=?]", "clinic[group]"

      assert_select "input#clinic_area_id[name=?]", "clinic[area_id]"

      assert_select "input#clinic_postal_code[name=?]", "clinic[postal_code]"

      assert_select "input#clinic_address[name=?]", "clinic[address]"

      assert_select "input#clinic_tel[name=?]", "clinic[tel]"

      assert_select "input#clinic_url[name=?]", "clinic[url]"

      assert_select "input#clinic_mail[name=?]", "clinic[mail]"
    end
  end
end
