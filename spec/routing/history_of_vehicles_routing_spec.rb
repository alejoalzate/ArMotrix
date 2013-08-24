require "spec_helper"

describe HistoryOfVehiclesController do
  describe "routing" do

    it "routes to #index" do
      get("/history_of_vehicles").should route_to("history_of_vehicles#index")
    end

    it "routes to #new" do
      get("/history_of_vehicles/new").should route_to("history_of_vehicles#new")
    end

    it "routes to #show" do
      get("/history_of_vehicles/1").should route_to("history_of_vehicles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/history_of_vehicles/1/edit").should route_to("history_of_vehicles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/history_of_vehicles").should route_to("history_of_vehicles#create")
    end

    it "routes to #update" do
      put("/history_of_vehicles/1").should route_to("history_of_vehicles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/history_of_vehicles/1").should route_to("history_of_vehicles#destroy", :id => "1")
    end

  end
end
