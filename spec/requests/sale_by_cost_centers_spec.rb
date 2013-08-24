require 'spec_helper'

describe "SaleByCostCenters" do
  describe "GET /sale_by_cost_centers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sale_by_cost_centers_path
      response.status.should be(200)
    end
  end
end
