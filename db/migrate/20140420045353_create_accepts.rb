class CreateAccepts < ActiveRecord::Migration
  def change
    create_table :accepts do |t|
      t.integer :questionid
      t.string :option_retrieved

      t.timestamps
    end
  end
end
