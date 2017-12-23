class ExamsController < ApplicationController
  before_action :authenticate_payment

  def new
    @questions = Question.where(topic_id: params[:topic_id]).limit(10)
  end

  def create
    corrector = CorrectorService.new(params[:q])
    corrector.perform
    if corrector.passed?
      flash[:alert] = 'Enhorabuena, has aprobado el test'
    else
      flash[:alert] = 'Lo sentimos, has suspendido el test'
    end
    redirect_to topics_path
  end
end
