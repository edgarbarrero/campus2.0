class ExamsController < ApplicationController
  def new
    @exam = Exam.new(topic_id: params[:topic_id])
    @questions = Question.where(topic_id: params[:topic_id]).limit(10)
  end

  def create
    flash[:alert] = "Enhorabuena, has aprobado el test"
    redirect_to topics_path
  end
end
