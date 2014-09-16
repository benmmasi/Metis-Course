require "./round"

class GuessingGame
  NUMBER_OF_ROUNDS = 3

  def initialize
  	@guess_total = 0.0
  	@correct_guess = 0
  end

  def play
  	puts "Hello and welcome to my guessing game"
 
  NUMBER_OF_ROUNDS.times do 
  	round = Round.new
  	round.play
  	puts "You made #{round.number_of_guesses} guesses"
    end

  	@guess_total += round.number_of_guesses
  	@correct_guess += round.correct_guess
	end
	
	puts "You made #{average_guesses} guesses per round" 
	puts "You made #{@correct_guess} correct guesses"
  end

  	def average_guesses
  	  @guess_total / NUMBER_OF_ROUNDS
  	end
end

guessing_game = GuessingGame.new
guessing_game.play