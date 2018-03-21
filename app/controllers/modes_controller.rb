class ModesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_mode, only: [:show]

  def index
    @modes = Mode.all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_mode
    @mode = Mode.find(params[:id])
  end
end
