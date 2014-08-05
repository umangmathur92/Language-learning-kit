class AddMarksToTests < ActiveRecord::Migration
  def change
    add_column :tests, :marks, :integer
  end
end
