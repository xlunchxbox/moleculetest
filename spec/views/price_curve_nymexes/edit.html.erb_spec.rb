require 'spec_helper'

describe "price_curve_nymexes/edit" do
  before(:each) do
    @price_curve_nymex = assign(:price_curve_nymex, stub_model(PriceCurveNymex,
      :settle_price => 1.5
    ))
  end

  it "renders the edit price_curve_nymex form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_nymex_path(@price_curve_nymex), "post" do
      assert_select "input#price_curve_nymex_settle_price[name=?]", "price_curve_nymex[settle_price]"
    end
  end
end
