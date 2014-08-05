class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :information
      t.text :instruction
      t.text :hint
      t.string :solution_code
      t.string :default_code
      t.belongs_to :tutorial
      t.timestamps
    end
  end
end
