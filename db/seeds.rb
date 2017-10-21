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
               :market_price => row[4],
               :issued_stocks => row[5],
               :stock_price => row[6],
               :industry_per => row[7],
               :eps => row[8],
               :bpr => row[9],
               :dividend => row[10])
end
