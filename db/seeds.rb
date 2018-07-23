# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


["김철수","김영희","유재욱","류성한","김도훈","김멋사","김로사","수누","원누","뭉크","재누","상원띠"].each do |each_name|
  Customer.create(custom_name: each_name, phone:01011112222, etc: "-")
end
["요가","바둑",'프로그래밍',"점심밥","명상"].each do |each_program|
  Program.create(name: each_program, startDay: "8월1일", endDay: "8월 31일", doingDay: "월, 수", doingTime: "11:00~12:00")
end

CustomProgram.create(customer_id: 1, program_id: 1)
CustomProgram.create(customer_id: 2, program_id: 2)
CustomProgram.create(customer_id: 3, program_id: 3)
CustomProgram.create(customer_id: 4, program_id: 4)
CustomProgram.create(customer_id: 5, program_id: 5)
CustomProgram.create(customer_id: 6, program_id: 1)
CustomProgram.create(customer_id: 7, program_id: 2)
CustomProgram.create(customer_id: 8, program_id: 3)
CustomProgram.create(customer_id: 9, program_id: 4)
CustomProgram.create(customer_id: 10, program_id: 5)
CustomProgram.create(customer_id: 11, program_id: 1)
CustomProgram.create(customer_id: 11, program_id: 2)
