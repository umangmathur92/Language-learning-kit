class CreateSettests < ActiveRecord::Migration
  def change
    create_table :settests do |t|

      t.belongs_to :question
      t.belongs_to :test
      t.belongs_to :user
      t.timestamps

    end
  end
end
