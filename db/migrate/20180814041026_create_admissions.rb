class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.integer :ID
      t.string :PERIOD_INSCRIPTION
      t.string :VALUE_INSCRIPTION
      t.string :DATE_LIMIT
      t.string :REQUIREMENTS
      t.string :VACANCIES
      t.string :INFO_ADDITIONAL

      t.timestamps
    end
  end
end
