class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :ID
      t.string :NAME
      t.string :DURATION
      t.string :DATE_START
      t.string :DATE_END
      t.string :PLACE
      t.string :INVESTMENT
      t.string :INFO_ADDITIONAL

      t.timestamps
    end
  end
end
