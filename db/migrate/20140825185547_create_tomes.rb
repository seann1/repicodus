class CreateTomes < ActiveRecord::Migration
  def change
    create_table :tomes do |t|
      t.column :description, :string
      t.column :number, :integer

      t.timestamps
    end
  end
end
