class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :ID
      t.string :ANSWER_VOTED

      t.timestamps
    end
  end
end
