class AddLanguageToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :language, index: true
  end
end
