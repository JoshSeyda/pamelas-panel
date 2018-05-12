# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(firstname:'Jorsh', lastname: 'TSSS', username: 'turnstile').build_user(email: 'test@email.com', password: 'password').save
Course.create(name: 'Astrophysics', description: 'Physics, in space!')
Course.create(name: 'Economics', description: 'Money, trade, and the simultaneous downfall and foundation of civilization')
Course.create(name: 'Baroque Music', description: 'The gnarliest of grandpa music')
Course.create(name: 'Urban Planning', description: 'If civilizations must exist...')
Course.create(name: 'Permaculture', description: 'Building a permanent culture')
Course.create(name: 'Architecture', description: 'Crafted to stand the test of time')
Course.create(name: 'Distributed Systems', description: 'Trust-less data distribution for global autonomy')
Course.create(name: 'Hacking(Programming)', description: 'Master the machine before it masters you...')

Teacher.create(firstname: 'Michio', lastname: 'Kaku', username: 'michiokakau', age: 50 , salary: 50000, education: 'Phd', birthday:'1988-02-15' , specialty: ['astrophysics', 'quantum_mechanics']).build_user(email: 'kaku@email.com', password: 'password').save
Teacher.create(firstname: 'Neil', lastname: 'Degrasse Tyson', username: 'NDG', age: 50 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['astrophysics', 'cosmology']).build_user(email: 'neil@email.com', password: 'password').save
Teacher.create(firstname: 'Nassim', lastname: 'Taleb', username: 'nassimtaleb', age: 50 , salary: 70000, education: 'Phd', birthday:'1988-02-15' , specialty: ['economics', 'finance', 'antifragility']).build_user(email: 'nassim@email.com', password: 'password').save
Teacher.create(firstname: 'David', lastname: 'Graeber', username: 'davidgraeber', age: 50 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['economics', 'anthropology']).build_user(email: 'graeber@email.com', password: 'password').save
Teacher.create(firstname: 'Johan Sebastian', lastname: 'Bach', username: 'jsbach', age: 450 , salary: 100000, education: 'High School', birthday: '1988-02-15', specialty: ['baroque music']).build_user(email: 'bach@email.com', password: 'password').save
Teacher.create(firstname: 'Jane', lastname: 'Jacobs', username: 'janejacobs', age: 35 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['Urban Planning']).build_user(email: 'janejacobs@email.com', password: 'password').save
Teacher.create(firstname: 'Paolo', lastname: 'Soleri', username: 'paolosoleri', age: 35 , salary: 50000, education: 'College', birthday: '1988-02-15', specialty: ['Architecture']).build_user(email: 'soleri@email.com', password: 'password').save
Teacher.create(firstname: 'Bill', lastname: 'Mollison', username: 'billmollison', age: 35 , salary: 50000, education: 'High School', birthday: '1988-02-15', specialty: ['Permaculture']).build_user(email: 'bill@email.com', password: 'password').save
Teacher.create(firstname: 'Nick', lastname: 'Szabo', username: 'szabo', age: 35 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['Blockchain']).build_user(email: 'szabo@email.com', password: 'password').save
Teacher.create(firstname: 'Linus', lastname: 'Torvalds', username: 'linustorvalds', age: 35 , salary: 50000, education: 'Masters', birthday: '1988-02-15', specialty: ['Software Architecture']).build_user(email: 'linus@email.com', password: 'password').save


Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 1, teacher_id: 1)
Cohort.create(start_date:'2018-06-01' , end_date: '2019-01-01', course_id: 1, teacher_id: 2)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 3)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 4)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 3, teacher_id: 5)
Cohort.create(start_date:'2018-06-01' , end_date: '2019-01-01', course_id: 4, teacher_id: 6)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 5, teacher_id: 8)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 6, teacher_id: 7)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 7, teacher_id: 9)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 8, teacher_id: 10)

Student.create(firstname: 'Laura', lastname: 'Lemon', username: 'lemon', age: 28 , birthday: '1988-02-15' , education: 'Masters').build_user(email: 'lemon@email.com', password: 'password').save
Student.create(firstname: 'Hank', lastname: 'Osito', username: 'osito', age:29 , birthday:'1988-02-15' , education: 'Masters').build_user(email: 'osito@email.com', password: 'password').save
Student.create(firstname: 'Matt', lastname: 'Baker', age:26 , username: 'bakes', birthday: '1988-02-15', education: 'Masters').build_user(email: 'baker@email.com', password: 'password').save
Student.create(firstname: 'Dave', lastname: 'King', age:30 , username: 'diversified', birthday:'1988-02-15' , education: 'College').build_user(email: 'diversified@email.com', password: 'password').save
Student.create(firstname: 'Jim', lastname: 'Green', username: 'green', age: 46 , birthday: '1988-02-15' , education: 'Phd').build_user(email: 'green@email.com', password: 'password').save
Student.create(firstname: 'Katsu', lastname: 'Togarashi', username: 'togarashi', age: 23 , birthday: '1988-02-15' , education: 'Masters').build_user(email: 'togarashi@email.com', password: 'password').save
Student.create(firstname: 'Paula', lastname: 'Dorado', username: 'dorado', age: 19 , birthday: '1988-02-15' , education: 'High School').build_user(email: 'dorado@email.com', password: 'password').save
Student.create(firstname: 'Sisi', lastname: 'Ma', username: 'sisi', age: 25 , birthday: '1988-02-15' , education: 'College').build_user(email: 'sisi@email.com', password: 'password').save

Member.create(cohort_id: 1,student_id: 1)
Member.create(cohort_id: 2,student_id: 2)
Member.create(cohort_id: 3,student_id: 3)
Member.create(cohort_id: 4,student_id: 4)
Member.create(cohort_id: 5,student_id: 5)
Member.create(cohort_id: 6,student_id: 6)
Member.create(cohort_id: 7,student_id: 7)
Member.create(cohort_id: 8,student_id: 8)
Member.create(cohort_id: 9,student_id: 1)
Member.create(cohort_id: 10,student_id: 2)
Member.create(cohort_id: 10,student_id: 3)
Member.create(cohort_id: 9,student_id: 4)
Member.create(cohort_id: 8,student_id: 5)
Member.create(cohort_id: 7,student_id: 6)
Member.create(cohort_id: 6,student_id: 7)
Member.create(cohort_id: 5,student_id: 8)
Member.create(cohort_id: 4,student_id: 2)
Member.create(cohort_id: 3,student_id: 1)
Member.create(cohort_id: 2,student_id: 7)
Member.create(cohort_id: 1,student_id: 3)
Member.create(cohort_id: 5,student_id: 4)



