class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.date        :transaction_date
      t.string      :invoice_number
      t.string      :customer_name
      t.string      :receipt
      t.string      :bank
      t.date        :receipt_date
      t.decimal     :amount
      t.decimal     :payment_amount
      t.decimal     :payment_amount2
      t.decimal     :balance
      t.boolean     :is_import
      t.belongs_to  :customer, index: true, foreign_key: true
      t.timestamps
    end
  end
end
