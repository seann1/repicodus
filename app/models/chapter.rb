class Chapter < ActiveRecord::Base
  validates :description, presence: true
end
