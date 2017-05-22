class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.belongs_to :season, index:true
      t.integer  :medium_id
      t.integer :season_number
      t.string :title_episode
      t.integer :episode_number
      t.datetime :date
      t.string :description

      t.timestamps
    end
  end
end
