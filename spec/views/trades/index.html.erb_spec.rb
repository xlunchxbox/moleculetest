require 'spec_helper'

describe "trades/index" do
  before(:each) do
    assign(:trades, [
      stub_model(Trade,
        :counter_party => "Counter Party",
        :trader => "Trader",
        :mtm_curve => "Mtm Curve",
        :buy_sell => "Buy Sell",
        :price => 1,
        :volume => 2,
        :delivery_location => "Delivery Location",
        :instrument => "Instrument",
        :brokerage => "Brokerage",
        :tags => "Tags",
        :notes => "Notes"
      ),
      stub_model(Trade,
        :counter_party => "Counter Party",
        :trader => "Trader",
        :mtm_curve => "Mtm Curve",
        :buy_sell => "Buy Sell",
        :price => 1,
        :volume => 2,
        :delivery_location => "Delivery Location",
        :instrument => "Instrument",
        :brokerage => "Brokerage",
        :tags => "Tags",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of trades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Counter Party".to_s, :count => 2
    assert_select "tr>td", :text => "Trader".to_s, :count => 2
    assert_select "tr>td", :text => "Mtm Curve".to_s, :count => 2
    assert_select "tr>td", :text => "Buy Sell".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Delivery Location".to_s, :count => 2
    assert_select "tr>td", :text => "Instrument".to_s, :count => 2
    assert_select "tr>td", :text => "Brokerage".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
