prices = ['50.00', '2.99', '43.25']
puts prices[0]
puts prices[1]
puts prices[2]

prices[5] = 44.66
puts prices.first

puts prices.length
puts prices.include?(2.990)
puts prices.find_index(50.00)
