class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :Name, null: false, unique: true
      t.string :Type, null: false
      t.string :Intro, null: false

      t.timestamps
    end
  end
end
