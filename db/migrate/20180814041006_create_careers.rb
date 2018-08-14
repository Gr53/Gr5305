class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|
      t.integer :ID
      t.string :TITLE
      t.string :LEVEL_EDUCATION
      t.string :MODALITY
      t.string :DURATION
      t.string :WORKING_DAY
      t.string :VALUE_SEMESTER
      t.string :VALUE_CURRICULUM
      t.string :QUALIFIED_REGISTRATION
      t.string :NUM_CREDITS
      t.string :AREA_KNOWLEDGE
      t.string :INFO_ADDITIONAL

      t.timestamps
    end
  end
end
