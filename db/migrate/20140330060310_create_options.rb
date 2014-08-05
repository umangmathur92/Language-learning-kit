class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :optionA
      t.text :optionB
      t.text :optionC
      t.text :optionD

      t.belongs_to :question
      t.timestamps
    end
  end
end
