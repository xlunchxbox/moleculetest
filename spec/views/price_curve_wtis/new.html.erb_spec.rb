require 'spec_helper'

describe "price_curve_wtis/new" do
  before(:each) do
    assign(:price_curve_wti, stub_model(PriceCurveWti,
      :settle_price => 1.5
    ).as_new_record)
  end

  it "renders new price_curve_wti form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_wtis_path, "post" do
      assert_select "input#price_curve_wti_settle_price[name=?]", "price_curve_wti[settle_price]"
    end
  end
end
