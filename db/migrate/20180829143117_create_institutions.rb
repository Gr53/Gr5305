class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :description
      t.string :character
      t.string :address
      t.string :phones
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
