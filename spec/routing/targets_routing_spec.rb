require "rails_helper"

RSpec.describe TargetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/").to route_to("targets#index")
    end

    it "routes to #show" do
      expect(:get => "/targets/1").to route_to("targets#show", :id => "1")
    end

  end
end
