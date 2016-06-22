
# class User

# 	# attr_reader :name

# 	#Attribute Writer
# 	def name=(value)
# 		if value.empty?
# 			raise "Name can't be blank."
# 		end
# 		@name = value
# 	end

# end

class Obuk
	attr_reader :name
	def ork
		puts "We are trying to type this name: #{@name} "
	end


	def play
		puts "This is my name: #{@name}" 
	end
end