class PriceCurveWti < ActiveRecord::Base
  
    CSV.open('db/data/ice_wti.csv', 'r', {:headers => true}).each do |row|
      PriceCurveWti.create(
        :month_year => row[0],
        :settle_price => row[4]
      )
    end
end
