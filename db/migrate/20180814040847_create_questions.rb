class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :ID
      t.string :ANSWER1
      t.string :ANSWER2
      t.string :ANSWER3
      t.string :ANSWER4
      t.string :THEME

      t.timestamps
    end
  end
end
