class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
  end

  def download_pdf
    filename = params[:filename]
    return unless filename
    send_file(
      "#{Rails.root}/app/assets/test.pdf",
      filename: "#{filename}.pdf",
      type: "application/pdf",
      format: :pdf,
      disposition:'attachment'
    )
  end
end
