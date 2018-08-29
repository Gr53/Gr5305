class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :locality
      t.string :address
      t.string :location_map
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
