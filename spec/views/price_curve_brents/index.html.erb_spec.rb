require 'spec_helper'

describe "price_curve_brents/index" do
  before(:each) do
    assign(:price_curve_brents, [
      stub_model(PriceCurveBrent,
        :settle_price => 1.5
      ),
      stub_model(PriceCurveBrent,
        :settle_price => 1.5
      )
    ])
  end

  it "renders a list of price_curve_brents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
