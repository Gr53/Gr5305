class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :identification
      t.string :names
      t.string :last_names
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
