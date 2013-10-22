class CreatePriceCurveWtis < ActiveRecord::Migration
  def change
    create_table :price_curve_wtis do |t|
      t.datetime :month_year
      t.float :settle_price

      t.timestamps
    end
  end
end
