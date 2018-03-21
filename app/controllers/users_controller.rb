class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy, :welcome]
  before_action :validate_user, only: [:payment, :create_payment]
  skip_before_action :authenticate_user!, only: [:welcome]

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
    if @user.valid?
      customer = Stripe::Customer.create email: @user.email, card: @user.card_token
      Stripe::Charge.create customer: customer.id, amount: 19900, description: 'curso rcd', currency: 'eur'
      UserMailer.new_user_registration(@user).deliver_now
      @user.payment = true
      @user.save
      redirect_to root_path, success: 'Pago realizado correctamente'
    else
      redirect_to edit_user_password_path, alert: 'Por favor, rellena los campos obligatorios para el usuario antes de realizar el pago.'
    end
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    render :payment
  end

  def welcome
  end

  def payment
    redirect_to root_path if current_user.payment
  end
  private

    # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :surname, :dni, :email, :phone, :professional_activity, :mode_id)
  end

  def stripe_params
    params.permit :stripeEmail, :stripeToken
  end

  def validate_user
    redirect_to edit_user_password_path, notice: 'Por favor, rellena los campos obligatorios para el usuario.' unless current_user.valid?
  end
end
