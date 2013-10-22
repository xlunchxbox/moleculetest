require 'spec_helper'

describe "price_curve_brents/new" do
  before(:each) do
    assign(:price_curve_brent, stub_model(PriceCurveBrent,
      :settle_price => 1.5
    ).as_new_record)
  end

  it "renders new price_curve_brent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_brents_path, "post" do
      assert_select "input#price_curve_brent_settle_price[name=?]", "price_curve_brent[settle_price]"
    end
  end
end
