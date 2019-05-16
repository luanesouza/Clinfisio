class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :doctor_first_name
      t.string :doctor_last_name
      t.string :doctor_email
      t.string :doctor_password_digest
      t.string :doctor_specialty

      t.timestamps
    end
  end
end
