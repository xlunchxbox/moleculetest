class PriceCurveBrent < ActiveRecord::Base

  CSV.open('db/data/ice_brent.csv', 'r', {:headers => true}).each do |row|
    PriceCurveBrent.create(
      :month_year => row[0],
      :settle_price => row[4]
    )
  end
end
