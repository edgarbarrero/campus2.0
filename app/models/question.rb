# == Schema Information
#
# Table name: questions
#
#  id             :integer          not null, primary key
#  text           :string
#  answer1        :string
#  answer2        :string
#  answer3        :string
#  correct_answer :integer
#  topic_id       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Question < ActiveRecord::Base
  belongs_to :topic
end
