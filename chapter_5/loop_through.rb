#prices = ['50.00', '60.00', '70.00']
#puts prices[0]
#puts prices[1]
#A
#puts prices[2]

def total(prices)
amount = 0
  index = 0
while index < prices.length
  amount += prices[index]
  index +=1
end
amount
end
 prices = [50.00, 60.00, 70.00]
puts format("%.2f", total(prices))

def refund(prices)
amount = 0
  index = 0
while index < prices.length
  amount -= prices[index]
  index +=1
end
amount
end
 prices = [50.00, 60.00, 70.00]
puts format("%.2f", refund(prices))

def total(prices)
  index = 0
while index < prices.length
  amount_off = prices[index]
 puts format("Your discount: %.2f",amount_off)
 index +=1
end
end
show_discounts(prices)
