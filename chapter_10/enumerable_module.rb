class WordSplitter
  include Enumerable
  attr_accessor :string
  def each
    string.split(" ").each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "one two three four"
splitter.string= "how do you do"

splitter.each do |word|
  puts word
end
puts splitter.count
