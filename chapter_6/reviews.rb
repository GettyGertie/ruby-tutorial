lines= []
File.open("reviews.txt") do |review_file|
lines = review_file.readlines
end

puts lines

relevant_lines = lines.find_all { |line| line.include?("Truncated") }

reviews = relevant_lines.reject { |line| line.include?("--") }

def find_adjective(string)
words = string.split(" ")
index = words.find_index("is")
words[index + 1]
end

adjectives = []

adjectives = reviews.map do |review| 
adjective = find_adjective(review) 
"'#{adjective.capitalize}'"
end
puts adjectives
