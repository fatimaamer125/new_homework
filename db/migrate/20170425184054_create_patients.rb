class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name , null: false
      t.string :last_name , null: false
      t.string :emails
      t.string :phone_number
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
