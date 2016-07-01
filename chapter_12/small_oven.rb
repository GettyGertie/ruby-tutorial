class OvenOffError < StandardError
end
class OvenEmptyError < StandardError
end
class SmallOven
  attr_accessor :contents
  def turn_on
    puts "Turning on oven ..."
    @state = "on"
  end
  def turn_off
    puts "Turning off oven ..."
    @state = "off"
  end
  def bake
    unless @state == "on"
      raise OvenOffError, "You need to turn the oven on first"
    end
    if @contents == nil
      raise OvenEmptyError,"There is nothing in the oven"
    end
    "golden brown #{contents}"
  end
end

dinner = ['Ugali', nil, 'Rice']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
begin
  oven.contents = item
  puts "serving #{oven.bake}"
rescue => error
  puts "error: #{error.message}"
end
end
