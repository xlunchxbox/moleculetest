class PriceCurveBrent < ActiveRecord::Base
    @price_curve_brents = PriceCurveBrent.delete_all()

  CSV.open('db/data/ice_brent.csv', 'r', {:headers => true}).each do |row|
    PriceCurveBrent.create(
      :month_year => row[0].to_date,
      :settle_price => row[4]
    )
  end
end
