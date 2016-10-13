require "rails_helper"

RSpec.describe ProjectClassificationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/project_classifications").to route_to("project_classifications#index")
    end

    it "routes to #new" do
      expect(:get => "/project_classifications/new").to route_to("project_classifications#new")
    end

    it "routes to #show" do
      expect(:get => "/project_classifications/1").to route_to("project_classifications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/project_classifications/1/edit").to route_to("project_classifications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/project_classifications").to route_to("project_classifications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/project_classifications/1").to route_to("project_classifications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/project_classifications/1").to route_to("project_classifications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/project_classifications/1").to route_to("project_classifications#destroy", :id => "1")
    end

  end
end
