class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :ID
      t.string :NAMES
      t.string :SURNAMES
      t.string :EMAIL
      t.string :PASSWORD

      t.timestamps
    end
  end
end
