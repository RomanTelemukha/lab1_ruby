arrays_to_test = [[], [5, 12, 44]]

puts "Спосіб 1 (використання методу empty?):"
arrays_to_test.each do |arr|
  if arr.empty?
    puts "Масив #{arr.inspect} порожній"
  else
    puts "Масив #{arr.inspect} не порожній"
  end
end

puts "\nСпосіб 2 (порівняння length == 0 або nil?):"
arrays_to_test.each do |arr|
  if arr.nil? || arr.length == 0
    puts "Масив #{arr.inspect} порожній"
  else
    puts "Масив #{arr.inspect} не порожній"
  end
end
