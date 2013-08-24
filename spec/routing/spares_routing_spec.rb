require "spec_helper"

describe SparesController do
  describe "routing" do

    it "routes to #index" do
      get("/spares").should route_to("spares#index")
    end

    it "routes to #new" do
      get("/spares/new").should route_to("spares#new")
    end

    it "routes to #show" do
      get("/spares/1").should route_to("spares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spares/1/edit").should route_to("spares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spares").should route_to("spares#create")
    end

    it "routes to #update" do
      put("/spares/1").should route_to("spares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spares/1").should route_to("spares#destroy", :id => "1")
    end

  end
end
