require "spec_helper"

describe ShoppingsController do
  describe "routing" do

    it "routes to #index" do
      get("/shoppings").should route_to("shoppings#index")
    end

    it "routes to #new" do
      get("/shoppings/new").should route_to("shoppings#new")
    end

    it "routes to #show" do
      get("/shoppings/1").should route_to("shoppings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shoppings/1/edit").should route_to("shoppings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shoppings").should route_to("shoppings#create")
    end

    it "routes to #update" do
      put("/shoppings/1").should route_to("shoppings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shoppings/1").should route_to("shoppings#destroy", :id => "1")
    end

  end
end
