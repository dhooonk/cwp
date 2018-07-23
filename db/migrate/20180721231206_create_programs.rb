class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.timestamps
      t.string :name
      t.string :startDay
      t.string :endDay
      t.string :doingDay
      t.string :doingTime
    end
  end
end
