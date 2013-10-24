require 'spec_helper'

describe "price_curves/index" do
  before(:each) do
    assign(:price_curves, [
      stub_model(PriceCurve,
        :curve_type => "Curve Type",
        :settle_price => 1.5
      ),
      stub_model(PriceCurve,
        :curve_type => "Curve Type",
        :settle_price => 1.5
      )
    ])
  end

  it "renders a list of price_curves" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Curve Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
