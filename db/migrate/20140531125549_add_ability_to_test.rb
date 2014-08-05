class AddAbilityToTest < ActiveRecord::Migration
  def change
    add_column :tests, :ability, :float
  end
end
