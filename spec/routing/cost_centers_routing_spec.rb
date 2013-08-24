require "spec_helper"

describe CostCentersController do
  describe "routing" do

    it "routes to #index" do
      get("/cost_centers").should route_to("cost_centers#index")
    end

    it "routes to #new" do
      get("/cost_centers/new").should route_to("cost_centers#new")
    end

    it "routes to #show" do
      get("/cost_centers/1").should route_to("cost_centers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cost_centers/1/edit").should route_to("cost_centers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cost_centers").should route_to("cost_centers#create")
    end

    it "routes to #update" do
      put("/cost_centers/1").should route_to("cost_centers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cost_centers/1").should route_to("cost_centers#destroy", :id => "1")
    end

  end
end
