json.array!(@price_curve_nymexes) do |price_curve_nymex|
  json.extract! price_curve_nymex, :month_year, :settle_price
  json.url price_curve_nymex_url(price_curve_nymex, format: :json)
end
