class PriceCurveNymex < ActiveRecord::Base

  CSV.open('db/data/nymex.csv', 'r', {:headers => true}).each do |row|
    PriceCurveNymex.create(
      :month_year => row[0],
      :settle_price => row[6]
    )
  end
end
