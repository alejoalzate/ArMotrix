require "spec_helper"

describe MechanicalsController do
  describe "routing" do

    it "routes to #index" do
      get("/mechanicals").should route_to("mechanicals#index")
    end

    it "routes to #new" do
      get("/mechanicals/new").should route_to("mechanicals#new")
    end

    it "routes to #show" do
      get("/mechanicals/1").should route_to("mechanicals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mechanicals/1/edit").should route_to("mechanicals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mechanicals").should route_to("mechanicals#create")
    end

    it "routes to #update" do
      put("/mechanicals/1").should route_to("mechanicals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mechanicals/1").should route_to("mechanicals#destroy", :id => "1")
    end

  end
end
