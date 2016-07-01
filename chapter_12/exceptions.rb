def first_method
  risky_method
  puts "blah blah"
end
begin
  risky_method
rescue
  puts "Just got rescued man"
end
