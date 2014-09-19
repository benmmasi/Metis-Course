class FlashcardGame
	def initialize(decks)
		@decks = decks 
	end

	def play
		loop do
			list_decks
			deck = get_selected_deck

			if deck 
				deck.play
			else
		 		puts "Exit"
		 	end
		end
	end

	private

	def list_decks
		@decks.each do |deck|
			puts deck.name
		end
	end

	def get_selected_deck
		puts "Please choose one of the following decks"
		deck_name = gets.chomp
		selected_deck = @decks.find { |deck| deck_name == deck.name }
	end
end

#decks = []

#spanish_cards = []
#spanish_cards << Card.new({front:"Gato", back:"Cat"})
#spanish_cards << Card.new({front:"Perro", back:"Dog"})
#decks << Deck.new({name:"Spanish", cards:spanish_cards})

#japanese_cards = []
#japanese_cards << Card.new({front:"Neko", back:"Cat"})
#japanese_cards << Card.new({front:"Inu", back:"Dog"})
#decks << Deck.new({name:"Japanese", cards:japanese_cards})




