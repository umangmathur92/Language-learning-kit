class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|

      t.belongs_to :question
      t.belongs_to :user
      	
      t.timestamps
    end
  end
end
