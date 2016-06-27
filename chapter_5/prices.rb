prices = ['50.00', '2.99', '43.25']
puts prices[0]
puts prices[1]
puts prices[2]

prices.push(0.99)
prices.pop
prices[5] = 44.66
puts prices

puts prices.length
puts prices.include?(2.990)
puts prices.find_index(50.00)
