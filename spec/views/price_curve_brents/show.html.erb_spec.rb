require 'spec_helper'

describe "price_curve_brents/show" do
  before(:each) do
    @price_curve_brent = assign(:price_curve_brent, stub_model(PriceCurveBrent,
      :settle_price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
