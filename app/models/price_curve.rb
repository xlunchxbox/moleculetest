class PriceCurve < ActiveRecord::Base
  
  @price_curves = PriceCurve.delete_all()
  
  CSV.open('db/data/ice_brent.csv', 'r', {:headers => true}).each do |row|
    PriceCurve.create(
      :curve_type => "BRENT WTI",
      :month_year => row[0].to_date,
      :settle_price => row[4]
    )
  end
  
  CSV.open('db/data/ice_wti.csv', 'r', {:headers => true}).each do |row|
    PriceCurve.create(
      :curve_type => "ICE WTI",
      :month_year => row[0].to_date,
      :settle_price => row[4]
    )
  end
  
  CSV.open('db/data/nymex.csv', 'r', {:headers => true}).each do |row|
    PriceCurve.create(
      :curve_type => "NYMEX CL",
      :month_year => row[0].to_date,
      :settle_price => row[6]
    )
  end
end
