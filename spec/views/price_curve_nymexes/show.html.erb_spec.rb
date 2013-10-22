require 'spec_helper'

describe "price_curve_nymexes/show" do
  before(:each) do
    @price_curve_nymex = assign(:price_curve_nymex, stub_model(PriceCurveNymex,
      :settle_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
