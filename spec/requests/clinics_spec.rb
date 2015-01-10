require 'rails_helper'

RSpec.describe "Clinics", :type => :request do
  describe "GET /clinics" do
    it "works! (now write some real specs)" do
      get clinics_path
      expect(response).to have_http_status(200)
    end
  end
end
