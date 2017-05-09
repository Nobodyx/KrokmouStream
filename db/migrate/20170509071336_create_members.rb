class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :Username_ID
      t.string :Username
      t.string :Email
      t.string :Password
      t.string :FirstName
      t.string :LastName
      t.datetime :Inscription
      t.integer :Member_Media

      t.timestamps
    end
  end
end
