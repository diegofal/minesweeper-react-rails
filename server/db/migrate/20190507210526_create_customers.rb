class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers, id: :serial, force: :cascade do |t|
      t.string "name"
      t.timestamps
    end
  end
end
