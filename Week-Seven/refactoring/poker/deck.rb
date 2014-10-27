class Deck
  def initialize
    @cards = []
    @values = %w[2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A]
    @suits = %w[H, S, C, D]
  end

  def make_cards
    @suits.each do |suit|
      @values.each do |value|
        @cards << [suit+value]
      end
    end
  end

    def shuffle
      @cards.shuffle
    end

    def print_deck
      @cards.each do |card|
        puts card
      end
    end

    def deal
     
    end
end

deck = Deck.new
deck.print_deck

