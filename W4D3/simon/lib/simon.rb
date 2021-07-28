class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1 
    @game_over = false 
    @seq = [] 
  end

  def play
    
    while !game_over 
      take_turn
    end

    p game_over_message
    reset_game 
  end

  def take_turn
    show_sequence
    begin 
      require_sequence
    rescue ArgumentError => e 
      puts e 
      retry 
    end 

    if !game_over 
      puts round_success_message
      @sequence_length += 1
    end 
  end

  def show_sequence
    puts add_random_color
  end 

  def require_sequence
    puts "Enter a color" 
    input = gets.chomp.split

    input.each do |i| 
      if !COLORS.include?(i)
        raise ArgumentError.new "Please enter only red, blue, green, or yellow"
      end

    end
    @game_over = true if @seq != input 
    @game_over
  end

  def add_random_color
    r = rand(0..3) 
    @seq << COLORS[r]
  end

  def round_success_message
    "Correct"
  end

  def game_over_message
    "Loser"
  end

  def reset_game
    @sequence_length = 1 
    @game_over = false 
    @seq = []  
  end
end

s = Simon.new 
s.play 