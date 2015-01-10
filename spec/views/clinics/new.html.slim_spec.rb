require 'rails_helper'

RSpec.describe "clinics/new", :type => :view do
  before(:each) do
    assign(:clinic, Clinic.new(
      :name => "MyString",
      :group => "MyString",
      :area_id => "",
      :postal_code => "MyString",
      :address => "MyString",
      :tel => "MyString",
      :url => "MyString",
      :mail => "MyString"
    ))
  end

  it "renders new clinic form" do
    render

    assert_select "form[action=?][method=?]", clinics_path, "post" do

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
