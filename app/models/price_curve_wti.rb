class PriceCurveWti < ActiveRecord::Base
  @price_curve_wtis = PriceCurveWti.delete_all()
  
    CSV.open('db/data/ice_wti.csv', 'r', {:headers => true}).each do |row|
      PriceCurveWti.create(
        :month_year => row[0].to_date,
        :settle_price => row[4]
      )
    end
end
