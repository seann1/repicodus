class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.column :description, :string
      t.column :tome_id, :integer
      t.column :number, :integer

      t.timestamps
    end
  end
end
