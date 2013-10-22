json.array!(@price_curve_brents) do |price_curve_brent|
  json.extract! price_curve_brent, :month_year, :settle_price
  json.url price_curve_brent_url(price_curve_brent, format: :json)
end
