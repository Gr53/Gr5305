class CreateScholarships < ActiveRecord::Migration[5.2]
  def change
    create_table :scholarships do |t|
      t.integer :ID
      t.string :DATE_LIMIT
      t.string :REQUIREMENTS
      t.string :VACANCIES
      t.string :INFO_ADDITIONAL

      t.timestamps
    end
  end
end
