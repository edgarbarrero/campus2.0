class ExamsController < ApplicationController
  before_action :authenticate_payment
  before_action :set_mode

  def new
    @topic = Topic.find(params[:topic_id])
    @questions = @topic.questions.order('random()').limit(10)
  end

  def create
    corrector = CorrectorService.new(params[:q])
    corrector.perform
    if corrector.passed?
      current_user.topics << Topic.find(params[:topic_id])
      if current_user.topics.uniq.count == current_user.available_topics.count
        flash[:success] = 'Enhorabuena, has finalizado con éxito el curso. En breve te enviaremos un correo con tu diploma acreditativo'
        UserMailer.user_complete_course(current_user).deliver_now
      else
        flash[:success] = 'Enhorabuena, has aprobado el test'
      end
    else
      flash[:alert] = 'Lo sentimos, has suspendido el test'
    end
    redirect_to mode_topics_path(@mode)
  end

  private

  def set_mode
    @mode = Mode.find(params[:mode_id])
  end
end
