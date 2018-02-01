class CorrectorService
  def initialize(params)
    @params = params
    @right_answers = 0
  end

  def perform
    @params.each do |question_id, correct_answer|
      q = Question.find(question_id)
      (@right_answers += 1) if q.correct_answer.to_s == correct_answer
    end
  end

  def passed?
    @right_answers >= 8
  end
end
