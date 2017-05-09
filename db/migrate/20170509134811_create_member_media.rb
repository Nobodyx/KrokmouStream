class CreateMemberMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :member_media do |t|
      t.integer :Member_Media_ID
      t.integer :Media
      t.integer :current_season
      t.integer :current_episode
      t.boolean :Done

      t.timestamps
    end
  end
end
