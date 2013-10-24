class PriceCurveNymex < ActiveRecord::Base
  @price_curve_nymexes = PriceCurveNymex.delete_all()

  CSV.open('db/data/nymex.csv', 'r', {:headers => true}).each do |row|
    PriceCurveNymex.create(
      :month_year => row[0].to_date,
      :settle_price => row[6]
    )
  end
end
