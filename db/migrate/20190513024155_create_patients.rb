class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :patient_first_name
      t.string :patient_last_name
      t.string :patient_phone_number
      t.string :diagnose
      t.string :address
      t.string :cpf_rg
      t.string :dob
      t.string :insurance
      t.integer :invoice_days
      t.string :enrollment_number
      t.string :disease_classification
      t.string :pass_number
      t.string :doctor_petitioner
      t.string :clinic_petitioner
      t.string :federal_medicine_council

      t.timestamps
    end
  end
end
