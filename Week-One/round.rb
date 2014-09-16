class Round
	MAXIMUM_GUESSES = 2

	def initialize
		@answer = rand(1..10)
		@number_of_guesses =0
		@correct_guess = 0
	end
	attr_reader :number_of_guesses
	attr_reader :correct_guess

	def play
		puts "New Round"
		MAXIMUM_GUESSES.times do	
			puts "The answer is #{@answer}"
			print "Enter a number please "
			guess = gets.chomp.to_i
			@number_of_guesses = @number_of_guesses + 1

			if correct?(guess)
				tell_user_they_are_correct
				@correct_guess = @correct_guess + 1
				break

			else
				tell_user_they_are_incorrect
			end 
			
		end
	end

 	private

	def correct?(guess)
		guess == @answer
	end

	def tell_user_they_are_correct
		puts "You are correct"
	end

	def tell_user_they_are_incorrect
		puts "You are wrong"
	end
end

