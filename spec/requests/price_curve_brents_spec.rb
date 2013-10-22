require 'spec_helper'

describe "PriceCurveBrents" do
  describe "GET /price_curve_brents" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get price_curve_brents_path
      response.status.should be(200)
    end
  end
end
