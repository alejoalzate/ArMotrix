require "spec_helper"

describe AccountReceivablesController do
  describe "routing" do

    it "routes to #index" do
      get("/account_receivables").should route_to("account_receivables#index")
    end

    it "routes to #new" do
      get("/account_receivables/new").should route_to("account_receivables#new")
    end

    it "routes to #show" do
      get("/account_receivables/1").should route_to("account_receivables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account_receivables/1/edit").should route_to("account_receivables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account_receivables").should route_to("account_receivables#create")
    end

    it "routes to #update" do
      put("/account_receivables/1").should route_to("account_receivables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account_receivables/1").should route_to("account_receivables#destroy", :id => "1")
    end

  end
end
