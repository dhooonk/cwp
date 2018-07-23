class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :custom_name
      t.integer :phone
      t.integer :etc
      t.timestamps
    end
  end
end
