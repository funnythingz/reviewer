require "rails_helper"

RSpec.describe ClinicsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/").to route_to("clinics#index")
    end

    it "routes to #show" do
      expect(:get => "/clinics/1").to route_to("clinics#show", :id => "1")
    end

  end
end
