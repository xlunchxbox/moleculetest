require 'spec_helper'

describe "price_curve_wtis/index" do
  before(:each) do
    assign(:price_curve_wtis, [
      stub_model(PriceCurveWti,
        :settle_price => 1.5
      ),
      stub_model(PriceCurveWti,
        :settle_price => 1.5
      )
    ])
  end

  it "renders a list of price_curve_wtis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
