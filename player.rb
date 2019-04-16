require 'securerandom'

class Player 
  attr_accessor :lives
  attr_reader :name

  def initialize name, lives
    @name = name
    @lives = lives
    @id = SecureRandom.uuid
  end

end