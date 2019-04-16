require 'securerandom'

class Player 
  attr_accessor :lives
  attr_reader :name, :id

  def initialize name, lives
    @name = name
    @lives = lives
    @id = SecureRandom.uuid
  end

end

# Seb = Player.new('Sebastian', 3)