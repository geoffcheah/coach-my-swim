class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :user, foreign_key: true
      t.integer :price
      t.text :bio
      t.string :speciality
      t.string :ability

      t.timestamps
    end
  end
end
