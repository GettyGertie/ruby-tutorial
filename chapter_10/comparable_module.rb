
#     (self <=> other) == 1
#   end

#   def <(other)
#     (self <=> other) == -1
#   end

#   def ==(other)
#     (self <=> other) == 0
#   end
#   def <=(other)
#     comparison = (self <=> other)
#     comparison == -1 || comparison == 0
#   end
#   def >=(other)
#     comparison = (self <=> other)
#     comparison == -1 || comparison == 0
#   end
#   def between?(first, second)
#     (self <=> first) >= 0 && (self <=> second) <= 0
#   end
# end

class Steak
  include Comparable
  GRADE_SCORES= {"prime" => 3, "choice" => 2, "select" => 1}
  attr_accessor :grade
  def <=>(other)
    if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
        return 0
      else
        return 1
      end
    end
  end

prime = Steak.new
prime.grade = "prime"
choice = Steak.new
choice.grade = "choice"
select = Steak.new
select.grade = "select"

puts "this is a dope grade : #{select.grade}"
puts "this is a doper grade! : #{choice.grade}"
puts "this is the dopest grade!!: #{prime.grade}"
