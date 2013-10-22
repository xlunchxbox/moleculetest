require 'spec_helper'

describe "trades/show" do
  before(:each) do
    @trade = assign(:trade, stub_model(Trade,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Counter Party/)
    rendered.should match(/Trader/)
    rendered.should match(/Mtm Curve/)
    rendered.should match(/Buy Sell/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Delivery Location/)
    rendered.should match(/Instrument/)
    rendered.should match(/Brokerage/)
    rendered.should match(/Tags/)
    rendered.should match(/Notes/)
  end
end
