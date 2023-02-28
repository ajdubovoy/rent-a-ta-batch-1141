class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :experience
      t.integer :batch_number
      t.string :superpower
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
