json.array!(@trades) do |trade|
  json.extract! trade, :counter_party, :trader, :mtm_curve, :buy_sell, :price, :volume, :tenor_start, :tenor_end, :delivery_location, :instrument, :brokerage, :tags, :notes
  json.url trade_url(trade, format: :json)
end
