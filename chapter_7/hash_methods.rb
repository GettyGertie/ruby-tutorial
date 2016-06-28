my_hash = {"one" => "moja", 5 => "five", :symbol => "dope"}
puts my_hash["one"]
puts my_hash[5]
puts my_hash[:symbol]

puts my_hash.inspect
puts my_hash.length
puts my_hash.has_key?("one")
puts my_hash.has_value?("dope")
puts my_hash.keys
puts my_hash.values

