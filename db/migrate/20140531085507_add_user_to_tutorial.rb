class AddUserToTutorial < ActiveRecord::Migration
  def change
    add_reference :tutorials, :user, index: true
  end
end
