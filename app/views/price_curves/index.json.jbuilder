json.array!(@price_curves) do |price_curf|
  json.extract! price_curf, :curve_type, :month_year, :settle_price
  json.url price_curf_url(price_curf, format: :json)
end
