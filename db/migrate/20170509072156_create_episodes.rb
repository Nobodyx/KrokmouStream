/* TEST */

class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.integer :Episode_ID
      t.string :Title_Season
      t.string :Title_Episode
      t.integer :Episode_Number
      t.datetime :Date
      t.string :Description

      t.timestamps
    end
  end
end
