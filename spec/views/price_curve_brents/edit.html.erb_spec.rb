require 'spec_helper'

describe "price_curve_brents/edit" do
  before(:each) do
    @price_curve_brent = assign(:price_curve_brent, stub_model(PriceCurveBrent,
      :settle_price => 1.5
    ))
  end

  it "renders the edit price_curve_brent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_brent_path(@price_curve_brent), "post" do
      assert_select "input#price_curve_brent_settle_price[name=?]", "price_curve_brent[settle_price]"
    end
  end
end
