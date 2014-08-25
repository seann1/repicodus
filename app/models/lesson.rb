class Lesson < ActiveRecord::Base
  validates :description, presence: true
end
