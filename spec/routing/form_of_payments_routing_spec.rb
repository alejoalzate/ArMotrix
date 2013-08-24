require "spec_helper"

describe FormOfPaymentsController do
  describe "routing" do

    it "routes to #index" do
      get("/form_of_payments").should route_to("form_of_payments#index")
    end

    it "routes to #new" do
      get("/form_of_payments/new").should route_to("form_of_payments#new")
    end

    it "routes to #show" do
      get("/form_of_payments/1").should route_to("form_of_payments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/form_of_payments/1/edit").should route_to("form_of_payments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/form_of_payments").should route_to("form_of_payments#create")
    end

    it "routes to #update" do
      put("/form_of_payments/1").should route_to("form_of_payments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/form_of_payments/1").should route_to("form_of_payments#destroy", :id => "1")
    end

  end
end
