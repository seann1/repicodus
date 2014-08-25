class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :chapter_id, :integer
      t.column :description, :string
      t.column :number, :integer

      t.timestamps
    end
  end
end
