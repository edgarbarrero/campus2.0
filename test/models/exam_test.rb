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

require 'test_helper'

class ExamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
