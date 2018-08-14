class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.integer :ID
      t.string :NAME
      t.string :DESCRIPTION
      t.string :CHARACTER
      t.string :ADDRESS_PPAL
      t.string :PHONES
      t.string :WEBSITE
      t.string :EMAIL

      t.timestamps
    end
  end
end
