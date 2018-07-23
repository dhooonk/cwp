class CreateCustomPrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_programs do |t|
      t.belongs_to :customer
      t.belongs_to :program
      t.timestamps
    end
  end
end
