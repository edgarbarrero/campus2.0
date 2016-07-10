class ExamsController < ApplicationController
  def new
    @exam = Exam.new(topic_id: params[:topic_id])
    @questions = Question.where(topic_id: params[:topic_id]).limit(10)
  end

  def create
    corrector = CorrectorService.new(params[:q])
    corrector.perform
    if corrector.passed? || true
      Exam.create(topic_id: params[:topic_id], user: current_user)
      flash[:alert] = 'Enhorabuena, has aprobado el test'
    else
      flash[:alert] = 'Lo sentimos has suspendido el test'
    end
    redirect_to topics_path
  end
end
