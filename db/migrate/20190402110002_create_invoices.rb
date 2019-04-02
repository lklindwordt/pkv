class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :date
      t.monetize :amount
      t.boolean :paid
      t.boolean :submitted
      t.boolean :cleared
      t.monetize :deductible

      t.timestamps
    end
  end
end
