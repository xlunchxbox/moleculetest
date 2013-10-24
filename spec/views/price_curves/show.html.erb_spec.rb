require 'spec_helper'

describe "price_curves/show" do
  before(:each) do
    @price_curve = assign(:price_curve, stub_model(PriceCurve,
      :curve_type => "Curve Type",
      :settle_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Curve Type/)
    rendered.should match(/1.5/)
  end
end
