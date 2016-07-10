# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  passed     :boolean
#  topic_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exam < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
end
