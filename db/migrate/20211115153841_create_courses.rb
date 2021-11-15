class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.text :content
      t.string :category
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
