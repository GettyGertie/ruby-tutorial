#This class allows you to perform various operations on the words in a string
class WordSplitter
  #creates a new instance with its string
def initialize(string)
    string.self = string
  end

  #This is a call to the Enumerable module
    include Enumerable
  #This is the string we split into words
  attr_accessor :string
  #Passes each word in the string to a block, one at a time
  def each
    string.split(" ").each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each do |word|
  puts word
end

