class Question
  attr_reader :question, :first, :second, :operator, :answer

  def initialize first, second, operator
    @first = first
    @second = second
    @operator = operator
    @question = Question.generator first, second, operator
    @answer = Question.answer first, second, operator
  end

  def self.answer first, second, operator
    first = first.to_i
    second = second.to_i
    operator = operator.to_sym
    @answer = first.send(operator, second)
  end

  def self.generator first, second, operator
   
    @question = "Question: #{first} #{operator} #{second}."
    @question
  end

end

q1 = Question.new(6, 5, :+)
# puts q1.first
# puts q1.second
# puts q1.operator
puts q1.question
puts q1.answer