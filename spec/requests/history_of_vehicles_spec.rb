require 'spec_helper'

describe "HistoryOfVehicles" do
  describe "GET /history_of_vehicles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get history_of_vehicles_path
      response.status.should be(200)
    end
  end
end
