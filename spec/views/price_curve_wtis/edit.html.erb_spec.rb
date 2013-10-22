require 'spec_helper'

describe "price_curve_wtis/edit" do
  before(:each) do
    @price_curve_wti = assign(:price_curve_wti, stub_model(PriceCurveWti,
      :settle_price => 1.5
    ))
  end

  it "renders the edit price_curve_wti form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_wti_path(@price_curve_wti), "post" do
      assert_select "input#price_curve_wti_settle_price[name=?]", "price_curve_wti[settle_price]"
    end
  end
end
