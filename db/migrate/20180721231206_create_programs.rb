class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.timestamps
      t.string :name
      t.string :fee

      t.string :registerPeople
      t.string :dutyPeople

      t.string :startDay
      t.string :endDay
      t.string :doingDay
      t.string :doingTime

      t.string :place
    end
  end
end
