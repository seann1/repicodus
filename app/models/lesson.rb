class Lesson < ActiveRecord::Base
  validates :description, presence: true
  validates :number, presence: true
  validates :chapter_id, presence: true
  validates :content, presence: true
  belongs_to :chapter
end
