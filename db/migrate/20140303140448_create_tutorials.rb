class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|

      t.string :name
      t.text :details
      t.belongs_to :language

      t.timestamps
    end
  end
end
