class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.integer :Season_ID
      t.string :Title_Media
      t.integer :Season_Number
      t.datetime :Date
      t.integer :Episode

      t.timestamps
    end
  end
end
