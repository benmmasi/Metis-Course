require "./deck"
require "./card"


class Hand
  def initialize
    @cards = cards
  end

  def deal_hand
    @cards.5.times do {|card|}
    card.print
    end
  end
end

hand = Hand.new
hand.deal_hand
