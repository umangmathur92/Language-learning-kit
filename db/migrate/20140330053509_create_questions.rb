class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :name
      t.text :correct_choice
      t.integer :difficulty_level


      t.timestamps
    end
  end
end
