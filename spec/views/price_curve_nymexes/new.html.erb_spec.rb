require 'spec_helper'

describe "price_curve_nymexes/new" do
  before(:each) do
    assign(:price_curve_nymex, stub_model(PriceCurveNymex,
      :settle_price => 1.5
    ).as_new_record)
  end

  it "renders new price_curve_nymex form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_nymexes_path, "post" do
      assert_select "input#price_curve_nymex_settle_price[name=?]", "price_curve_nymex[settle_price]"
    end
  end
end
