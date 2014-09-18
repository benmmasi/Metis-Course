class Card
  def initialize(front_and_back)
    @front = front_and_back[:front]
    @back = front_and_back[:back]
  end

  def play
    puts "What is #{@front}?"
    guess = gets.chomp.capitalize
    if guess == @back
    	puts "Correct!"
    else
    	puts "Sorry!"
    end
  end
end