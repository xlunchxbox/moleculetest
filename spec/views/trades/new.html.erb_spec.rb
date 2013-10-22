require 'spec_helper'

describe "trades/new" do
  before(:each) do
    assign(:trade, stub_model(Trade,
      :counter_party => "MyString",
      :trader => "MyString",
      :mtm_curve => "MyString",
      :buy_sell => "MyString",
      :price => 1,
      :volume => 1,
      :delivery_location => "MyString",
      :instrument => "MyString",
      :brokerage => "MyString",
      :tags => "MyString",
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new trade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trades_path, "post" do
      assert_select "input#trade_counter_party[name=?]", "trade[counter_party]"
      assert_select "input#trade_trader[name=?]", "trade[trader]"
      assert_select "input#trade_mtm_curve[name=?]", "trade[mtm_curve]"
      assert_select "input#trade_buy_sell[name=?]", "trade[buy_sell]"
      assert_select "input#trade_price[name=?]", "trade[price]"
      assert_select "input#trade_volume[name=?]", "trade[volume]"
      assert_select "input#trade_delivery_location[name=?]", "trade[delivery_location]"
      assert_select "input#trade_instrument[name=?]", "trade[instrument]"
      assert_select "input#trade_brokerage[name=?]", "trade[brokerage]"
      assert_select "input#trade_tags[name=?]", "trade[tags]"
      assert_select "input#trade_notes[name=?]", "trade[notes]"
    end
  end
end
