class Tome < ActiveRecord::Base
  validates :description, presence: true
  validates :number, presence: true
end
