class Teacher < ActiveRecord::Base
  validates :name, presence: true

  def self.valid_name?(teacher_name)
    Teacher.where({name: teacher_name}).first != nil
  end
end
