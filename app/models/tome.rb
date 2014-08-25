class Tome < ActiveRecord::Base
  validates :description, presence: true
  validates :number, presence: true
  has_many :chapters
  has_many :lessons, through: :chapters
end
