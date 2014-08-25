class Chapter < ActiveRecord::Base
  validates :description, presence: true
  validates :number, presence: true
  validates :tome_id, presence: true
  has_many :lessons
  belongs_to :tome
end
