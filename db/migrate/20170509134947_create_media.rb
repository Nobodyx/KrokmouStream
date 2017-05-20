class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.string :title
      t.string :type
      t.string :style
      t.integer :season
      t.string :director
      t.string :description

      t.timestamps
    end
  end
end
