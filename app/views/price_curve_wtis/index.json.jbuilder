json.array!(@price_curve_wtis) do |price_curve_wti|
  json.extract! price_curve_wti, :month_year, :settle_price
  json.url price_curve_wti_url(price_curve_wti, format: :json)
end
