require "rails_helper"

RSpec.describe ReviewsController, :type => :routing do
  describe "routing" do

    it "routes to #create" do
      expect(:post => "/reviews").to route_to("reviews#create")
    end

  end
end
