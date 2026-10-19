numbers = Array.new(10) { rand(1..100) }

puts "Початковий масив:"
p numbers

filtered = numbers.reject { |n| n % 4 == 0 }

puts "Масив після вилучення чисел, кратних 4:"
p filtered
