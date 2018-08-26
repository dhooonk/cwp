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

["요가","바둑",'프로그래밍',"점심밥","명상",
"피아노","명상테라피선요가","노래교실","방송댄스","에어로빅","통기타교실","바디라인업","필라테스","사주명리학","가락장구",
"한글교실","사기열전","영어(초급)","영어(중급)","중국어(초급)","중국어(고급)","일본어(초급)","일본어(중급)","민요교실",
"컴퓨터교실(초급)","컴퓨터교실(중급)","스위시","웰빙댄스(초급)","웰빙댄스",
"라인댄스(초급)","라인댄스(중급)","맷돌체조","건강요가(초급)","건강요가(중급)","고전무용(초급)","고전무용(중급)",
"태극권","합창","하모니카","사물놀이(초급)","사물놀이(중급)","사주명리학(초급)",
"탁구교실(자율)1","탁구교실(자율)2","탁구교실(초급배우기)",
"당구/포켓볼교실(초급배우기)1","당구/포켓볼교실(초급배우기)2",
"당구/포켓볼/바둑/장기교실(자율)"].each do |each_program|
  Program.create(name: each_program, startDay: "9월 1일", dutyPeople:"5", fee:"30,000", endDay: "9월 31일", doingDay: "월, 수", doingTime: "10:00~12:00", place: "중림동 주민센터 1층 다목적실")
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
