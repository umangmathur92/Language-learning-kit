class AddTestToAccept < ActiveRecord::Migration
  def change
    add_reference :accepts, :test, index: true
  end
end
