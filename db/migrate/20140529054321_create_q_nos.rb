class CreateQNos < ActiveRecord::Migration
  def change
    create_table :q_nos do |t|
      t.integer :no

      t.timestamps
    end
  end
end
