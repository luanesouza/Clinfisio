class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :session_type
      t.integer :session_qnty
      t.boolean :session_bilateral
      t.string :session_price
      t.integer :evaluation_price
      t.boolean :discount
      t.integer :discount_price
      t.boolean :patient_dependent

      t.timestamps
    end
  end
end
