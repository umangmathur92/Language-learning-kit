class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :details
      t.string :language_type
      t.string :compile_procedure
      t.string :execute_procedure
      t.string :file_extension

      t.timestamps
    end
  end
end
