class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def professorate
  end

  def presentation
  end
end
