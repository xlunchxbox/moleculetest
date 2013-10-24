require 'spec_helper'

describe "price_curves/new" do
  before(:each) do
    assign(:price_curve, stub_model(PriceCurve,
      :curve_type => "MyString",
      :settle_price => 1.5
    ).as_new_record)
  end

  it "renders new price_curve form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curves_path, "post" do
      assert_select "input#price_curve_curve_type[name=?]", "price_curve[curve_type]"
      assert_select "input#price_curve_settle_price[name=?]", "price_curve[settle_price]"
    end
  end
end
