# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

CSV.foreach('db/dayStack.csv', headers: true) do |row|
  Stack.create(:code => row[0],
               :company => row[1],
               :market => row[2],
               :sector => row[3],
               :market_price => row[4] == "-" ? 0 : row[4].to_i,
               :issued_stocks => row[5] == "-" ? 0 : row[5].to_i,
               :stock_price => row[6],
               :dividend => row[7] == "-" ? 0.00 : row[7].to_f,
               :industry_per => row[8],
               :eps => row[9] == "-" ? 0.00 : row[9].to_f,
               :bps => row[10] == "-" ? 0.00 : row[10].to_f)
end
