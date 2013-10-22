require 'spec_helper'

describe "price_curve_wtis/show" do
  before(:each) do
    @price_curve_wti = assign(:price_curve_wti, stub_model(PriceCurveWti,
      :settle_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
