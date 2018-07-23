class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :startDay
      t.string :endDay
      t.string :doingDay
      t.string :doingTime
      t.timestamps
    end
  end
end
