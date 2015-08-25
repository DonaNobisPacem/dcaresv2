require "rails_helper"

RSpec.describe FundSourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fund_sources").to route_to("fund_sources#index")
    end

    it "routes to #new" do
      expect(:get => "/fund_sources/new").to route_to("fund_sources#new")
    end

    it "routes to #show" do
      expect(:get => "/fund_sources/1").to route_to("fund_sources#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fund_sources/1/edit").to route_to("fund_sources#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fund_sources").to route_to("fund_sources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fund_sources/1").to route_to("fund_sources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fund_sources/1").to route_to("fund_sources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fund_sources/1").to route_to("fund_sources#destroy", :id => "1")
    end

  end
end
