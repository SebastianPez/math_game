class Turn
  attr_accessor :player_answer

  def initialize name, answer
    @current_player = name
    @current_answer = answer
    @player_answer = ''
  end

  def player_attempt player_attempt
    @player_answer = player_attempt
    Turn.result @player_answer
  end

  def self.result answer
    puts @player_answer == @current_answer ? true : false
  end

end

turn1 = Turn.new("player", 10 )
turn1.player_attempt 10