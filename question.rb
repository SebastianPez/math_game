class Question
  attr_reader :question, :first, :second, :operator, :answer

  def initialize 
    @first = Random.rand(1..20)
    @second = Random.rand(1..20)
    @operator = :+
    @question = Question.generator @first, @second, @operator
    @answer = Question.answer @first, @second, @operator
  end

  def self.answer first, second, operator
    first = first.to_i
    second = second.to_i
    operator = operator.to_sym
    @answer = first.send(operator, second)
  end

  def self.generator first, second, operator
    @question = "#{first} #{operator} #{second}"
  end

end
