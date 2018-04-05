# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mode < ActiveRecord::Base
  has_and_belongs_to_many :topics
  has_many :users

  validates :price, presence: true
end
