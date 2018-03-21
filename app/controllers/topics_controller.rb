class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_topic, only: [:show]
  before_action :set_mode
  before_action :authenticate_payment, only: [:show]

  def index
    @topics = current_user.available_topics
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_topic
    @topic = Topic.find(params[:id])
  end

  def set_mode
    @mode = Mode.find(params[:mode_id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def topic_params
    params.require(:topic).permit(:title)
  end
end
