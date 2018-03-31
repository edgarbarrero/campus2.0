RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.included_models = [User, Question, Mode, Topic]

  config.model 'Question' do
    list do
      field :text
      field :answer1
      field :answer2
      field :answer3
      field :answer4
      field :correct_answer
      field :topic_id
    end

    show do
      field :text
      field :answer1
      field :answer2
      field :answer3
      field :answer4
      field :correct_answer
      field :topic_id
    end

    edit do
      field :text
      field :answer1
      field :answer2
      field :answer3
      field :answer4
      field :correct_answer
      field :topic_id
    end
  end

  config.model 'User' do
    list do
      field :email
      field :name
      field :surname
      field :mode
      field :phone
      field :payment
    end

    show do
      field :email
      field :name
      field :surname
      field :mode
      field :dni
      field :phone
      field :payment
      field :confirmed_at
      field :topics
    end

    edit do
      field :email
      field :name
      field :surname
      field :mode
      field :dni
      field :phone
      field :payment
      field :confirmed_at
      field :topics
    end
  end

  config.model 'Mode' do
    list do
      field :title
      field :description
    end

    show do
      field :title
      field :description
      field :topics
      field :email_content
    end

    edit do
      field :title
      field :description
      field :topics
      field :email_content
    end
  end

  config.model 'Topic' do
    list do
      field :title
    end

    show do
      field :title
      field :content
    end

    edit do
      field :title
      field :content
    end
  end
end
