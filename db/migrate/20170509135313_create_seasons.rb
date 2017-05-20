class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.belongs_to :medium, index:true
      t.string :title_media
      t.integer :season_number
      t.datetime :date
      t.integer :episode

      t.timestamps
    end
  end
end
