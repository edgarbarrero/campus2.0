class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_topic, only: [:show]

  def index
    @topics = Topic.all
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_topic
    @topic = Topic.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def topic_params
    params.require(:topic).permit(:title)
  end
end