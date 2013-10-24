require 'spec_helper'

describe "price_curves/edit" do
  before(:each) do
    @price_curve = assign(:price_curve, stub_model(PriceCurve,
      :curve_type => "MyString",
      :settle_price => 1.5
    ))
  end

  it "renders the edit price_curve form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", price_curve_path(@price_curve), "post" do
      assert_select "input#price_curve_curve_type[name=?]", "price_curve[curve_type]"
      assert_select "input#price_curve_settle_price[name=?]", "price_curve[settle_price]"
    end
  end
end
