require "./deck"

class Card
  def initialize
    @suit = suit
    @value = value
  end
  
  def play
    card = [suit+value]
    card.print
  end
end

card = Card.new
card.play


