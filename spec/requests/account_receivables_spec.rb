require 'spec_helper'

describe "AccountReceivables" do
  describe "GET /account_receivables" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get account_receivables_path
      response.status.should be(200)
    end
  end
end
