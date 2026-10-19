flights = [
  { flight: "PS101", destination: "Kyiv", price: 1500 },
  { flight: "PS102", destination: "Kyiv", price: 1200 },
  { flight: "LH201", destination: "Warsaw", price: 2800 },
  { flight: "LH202", destination: "Warsaw", price: 2400 },
  { flight: "FR301", destination: "Berlin", price: 1900 },
  { flight: "FR302", destination: "Berlin", price: 2100 },
  { flight: "W6401", destination: "Kyiv", price: 1100 },
  { flight: "LO501", destination: "Warsaw", price: 2600 }
]

puts "Спосіб 1 (використання group_by та min_by):"
grouped_flights = flights.group_by { |f| f[:destination] }
cheapest_by_group = grouped_flights.transform_values do |list|
  list.min_by { |f| f[:price] }
end

cheapest_by_group.each do |city, flight|
  puts "#{city}: рейс #{flight[:flight]}, ціна #{flight[:price]} грн"
end

puts "\nСпосіб 2 (використання ітератора each):"
cheapest_by_each = {}
flights.each do |f|
  city = f[:destination]
  if !cheapest_by_each.key?(city) || f[:price] < cheapest_by_each[city][:price]
    cheapest_by_each[city] = f
  end
end

cheapest_by_each.each do |city, flight|
  puts "#{city}: рейс #{flight[:flight]}, ціна #{flight[:price]} грн"
end
