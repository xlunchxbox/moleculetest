class CreatePriceCurves < ActiveRecord::Migration
  def change
    create_table :price_curves do |t|
      t.string :curve_type
      t.date :month_year
      t.float :settle_price

      t.timestamps
    end
  end
end
