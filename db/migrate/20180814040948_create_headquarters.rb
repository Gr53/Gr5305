class CreateHeadquarters < ActiveRecord::Migration[5.2]
  def change
    create_table :headquarters do |t|
      t.integer :ID
      t.string :NAME
      t.string :LOCATION
      t.string :ADDRESS
      t.string :LOCATION_MAP

      t.timestamps
    end
  end
end
