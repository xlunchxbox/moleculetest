require 'csv'

class Trade < ActiveRecord::Base
  
  CSV.open('db/data/trades.csv', 'r').each do |row|
    Trade.create(
      :counter_party => row[1],
      :trader => row[2],
      :mtm_curve => row[3],
      :buy_sell => row[4],
      :price => row[5],
      :volume => row[6],
      :tenor_start => row[7],
      :tenor_end => row[8],
      :delivery_location => row[9],
      :instrument => row[10],
      :brokerage => row[11],
      :tags => row[12],
      :notes => row[13]
      
    )
  end

end



# 
# 
# CSV.foreach(params[:file].path, headers:true, :col_sep => ",") do |row|
#   Trade.create(
#     :trade_id => trade_id[0],
#     :counter_party => row[1],
#     :trader => row[2],
#     :mtm_curve => row[3],
#     :buy_sell => row[4],
#     :price => row[5],
#     :volume => row[6],
#     :tenor_start => row[7],
#     :tenor_end => row[8], 
#     :delivery_location => row[9],
#     :instrument => row[10],
#     :brokerage => row[11],
#     :tags => row[12],
#     :notes => row[13])
# end