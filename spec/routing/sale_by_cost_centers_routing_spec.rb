require "spec_helper"

describe SaleByCostCentersController do
  describe "routing" do

    it "routes to #index" do
      get("/sale_by_cost_centers").should route_to("sale_by_cost_centers#index")
    end

    it "routes to #new" do
      get("/sale_by_cost_centers/new").should route_to("sale_by_cost_centers#new")
    end

    it "routes to #show" do
      get("/sale_by_cost_centers/1").should route_to("sale_by_cost_centers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sale_by_cost_centers/1/edit").should route_to("sale_by_cost_centers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sale_by_cost_centers").should route_to("sale_by_cost_centers#create")
    end

    it "routes to #update" do
      put("/sale_by_cost_centers/1").should route_to("sale_by_cost_centers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sale_by_cost_centers/1").should route_to("sale_by_cost_centers#destroy", :id => "1")
    end

  end
end
