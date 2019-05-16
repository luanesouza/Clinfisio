class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :expense_date
      t.string :expense_type
      t.integer :expense_amount
      t.string :expense_doc_number
      t.integer :balance

      t.timestamps
    end
  end
end
