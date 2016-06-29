class Stars
  attr_accessor :name, :type
end

space = Stars.new
space.name = 'stile'
space.type = 'colestation'
air = Stars.new
air.name = 'polaris'
air.type = 'small'
puts space.name, air.name

bodies = Hash.new do |hash, key|
body= Stars.new
body.type = 'planet'
hash[key] = body
end

bodies['Mars'].name = 'Mars'
bodies['wasnthere'].name = "I was not here"
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'
puts bodies
