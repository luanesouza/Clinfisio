class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :patient_name
      t.integer :patient_id
      t.integer :doctor_id
      t.string :doctor_name
      t.string :date
      t.string :time
      t.integer :session_id
      t.string :session_type
      t.boolean :patient_present

      t.timestamps
    end
  end
end
