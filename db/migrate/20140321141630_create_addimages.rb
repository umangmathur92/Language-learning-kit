class CreateAddimages < ActiveRecord::Migration
  def change
    create_table :addimages do |t|
      t.string :url

      t.timestamps
    end
  end
end
