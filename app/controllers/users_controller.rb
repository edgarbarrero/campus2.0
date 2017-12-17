class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  # GET /users/1
  # GET /users/1.json
  def show
  end


  # GET /users/1/edit
  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to topics_path, notice: 'User was successfully updated.' }
      else
        format.html { render 'edit' }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    end
  end

  def create_payment
    @user = User.find(params[:id])
    @user.card_token = params['stripeToken']
    raise 'Please, check registration errors' unless @user.valid?
    @user.process_payment
    @user.save
    redirect_to root_path, notice: 'Pago realizado correctamente'
  rescue Exception => e
    flash[:notice] = e.message
    render :payment
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :surname, :dni, :email, :phone, :birth_date, :date)
    end

    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end
end