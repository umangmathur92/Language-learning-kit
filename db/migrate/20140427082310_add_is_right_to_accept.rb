class AddIsRightToAccept < ActiveRecord::Migration
  def change
    add_column :accepts, :isright, :boolean
  end
end
