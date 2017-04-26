class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :f_name , null: false
      t.string :l_name , null: false
      t.string :license_no , null: false
      t.string :email
      t.string :phone_num

      t.timestamps null: false
    end
  end
end
