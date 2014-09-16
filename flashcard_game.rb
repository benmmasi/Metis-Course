class FlashcardGame

	def play
		say_hi_to_user
		loop do
		 puts "Please select a deck"
		 deck = gets.chomp

		 if deck == ""
		 	puts "would exit"
		 	break

		 else
		 	#deck.play
		 	#print "would play #{deck}"
		 end
		end
	end
		private

		def say_hi_to_user
			puts "Hello, and welcome to my game"
		end
	
end



flashcard_game = FlashcardGame.new
flashcard_game.play
