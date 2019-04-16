class Question

  def initialize
    @question = ''
  end

  # Will take in numbers and operator from init.
  def generator first, second, operator
    @question = "Question: #{first} #{operator} #{second}."
    @question
  end

end