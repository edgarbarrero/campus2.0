class CorrectorService
  def initialize(answers)
    @answers = answers
    @right_answers = 0
  end

  def perform
    @answers.each do |answer|
      q = Question.find(answer[0])
      (@right_answers += 1) if q.correct_answer == answer[1]
    end
  end

  def passed?
    @right_answers >= 8
  end
end
