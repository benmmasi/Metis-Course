require "./deck"

class Shuffler
  def initialize(deck)
    @deck = deck
  end

  def run
    @deck.randomize
  end







 
end
