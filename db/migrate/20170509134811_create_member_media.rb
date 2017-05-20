class CreateMemberMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :member_media do |t|
      t.belongs_to :user, index:true
      t.integer :medium_id
      t.integer :current_season
      t.integer :current_episode
      t.boolean :Done

      t.timestamps
    end
  end
end
