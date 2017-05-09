class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.integer :Media_ID
      t.string :Title
      t.string :Type
      t.string :Style
      t.integer :Season
      t.string :Director

      t.timestamps
    end
  end
end
