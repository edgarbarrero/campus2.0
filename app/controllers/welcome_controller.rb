class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def download_pdf
    send_file(
      "#{Rails.root}/app/assets/test.pdf",
      filename: "test.pdf",
      type: :pdf,
      format: :pdf
    )
  end
end
