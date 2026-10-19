RATE_TEN = 0.10
RATE_FIFTEEN = 0.15
RATE_TWENTY = 0.20

bill = 650.0

tip_10 = bill * RATE_TEN
tip_15 = bill * RATE_FIFTEEN
tip_20 = bill * RATE_TWENTY

total_10 = bill + tip_10
total_15 = bill + tip_15
total_20 = bill + tip_20

puts "Рахунок: #{bill} грн"
puts "Чайові 10%: #{tip_10.round(2)} грн, разом до сплати: #{total_10.round(2)} грн"
puts "Чайові 15%: #{tip_15.round(2)} грн, разом до сплати: #{total_15.round(2)} грн"
puts "Чайові 20%: #{tip_20.round(2)} грн, разом до сплати: #{total_20.round(2)} грн"
