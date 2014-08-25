class Tome < ActiveRecord::Base
  validates :description, presence: true
end
