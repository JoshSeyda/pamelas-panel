# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(firstname:'Jorsh', lastname: 'TSSS', username: 'turnstile', password_digest: 'password', email: 'test@email.com')
Course.create(name: 'Astrophysics', description: 'Physics, in space!')
Course.create(name: 'Economics', description: 'Money, trade, and the simultaneous downfall and foundation of civilization')
Course.create(name: 'Baroque Music', description: 'The gnarliest of grandpa music')
Course.create(name: 'Urban Planning', description: 'If civilizations must exist...')
Course.create(name: 'Permaculture', description: 'Building a permanent culture')
Course.create(name: 'Architecture', description: 'Crafted to stand the test of time')
Course.create(name: 'Distributed Systems', description: 'Trust-less data distribution for global autonomy')
Course.create(name: 'Hacking(Programming)', description: 'Master the machine before it masters you...')

Teacher.create(firstname: 'Michio', lastname: 'Kaku', username: 'michiokakau', email: 'michio@email.com',password_digest: 'password', age: 50 , salary: 50000, education: 'Phd', birthday:'1988-02-15' , specialty: ['astrophysics', 'quantum_mechanics'])
Teacher.create(firstname: 'Neil', lastname: 'Degrasse Tyson', username: 'NDG', email: 'neil@email.com',password_digest: 'password', age: 50 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['astrophysics', 'cosmology'])
Teacher.create(firstname: 'Nassim', lastname: 'Taleb', username: 'nassimtaleb', email: 'nassim@email.com',password_digest: 'password', age: 50 , salary: 70000, education: 'Phd', birthday:'1988-02-15' , specialty: ['economics', 'finance', 'antifragility'])
Teacher.create(firstname: 'David', lastname: 'Graeber', username: 'davidgraeber', email: 'david@email.com',password_digest: 'password', age: 50 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['economics', 'anthropology'])
Teacher.create(firstname: 'Johan Sebastian', lastname: 'Bach', username: 'jsbach', email: 'bach@email.com',password_digest: 'password', age: 450 , salary: 100000, education: 'High School', birthday: '1988-02-15', specialty: ['baroque music'])
Teacher.create(firstname: 'Jane', lastname: 'Jacobs', username: 'janejacobs', email: 'janejacobs@email.com',password_digest: 'password', age: 35 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['Urban Planning'])
Teacher.create(firstname: 'Paolo', lastname: 'Soleri', username: 'paolosoleri', email: 'paolo@email.com',password_digest: 'password', age: 35 , salary: 50000, education: 'College', birthday: '1988-02-15', specialty: ['Architecture'])
Teacher.create(firstname: 'Bill', lastname: 'Mollison', username: 'billmollison', email: 'bill@email.com',password_digest: 'password', age: 35 , salary: 50000, education: 'High School', birthday: '1988-02-15', specialty: ['Permaculture'])
Teacher.create(firstname: 'Nick', lastname: 'Szabo', username: 'szabo', email: 'szabo@email.com',password_digest: 'password', age: 35 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['Blockchain'])
Teacher.create(firstname: 'Linus', lastname: 'Torvalds', username: 'linustorvalds', email: 'linus@email.com',password_digest: 'password', age: 35 , salary: 50000, education: 'Masters', birthday: '1988-02-15', specialty: ['Software Architecture'])


Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 1, teacher_id: 1 )
Cohort.create(start_date:'2018-06-01' , end_date: '2019-01-01', course_id: 1, teacher_id: 2 )
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 3 )
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 3 )
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 4)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 3, teacher_id: 5 )
Cohort.create(start_date:'2018-06-01' , end_date: '2019-01-01', course_id: 4, teacher_id: 6 )
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 5, teacher_id: 8 )
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 6, teacher_id: 7)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 7, teacher_id: 9)
Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 8, teacher_id: 10)

Student.create(firstname: 'Liz', lastname: 'Lund', username: 'lemon', email: 'liz@email.com',password_digest: 'password', age: 28 , birthday: '1988-02-15' , education: 'Masters')
Student.create(firstname: 'Harrison', lastname: 'Chiu', username: 'angola', email: 'harrison@email.com',password_digest: 'password', age:29 , birthday:'1988-02-15' , education: 'Masters')
Student.create(firstname: 'Maddy', lastname: 'Strassler', age:26 , username: 'madstrass', email: 'maddy@email.com',password_digest: 'password', birthday: '1988-02-15', education: 'Masters')
Student.create(firstname: 'Darren', lastname: 'Kong', age:30 , username: 'diversifiedbonds', email: 'darren@email.com',password_digest: 'password', birthday:'1988-02-15' , education: 'Bachelors')

Member.create(cohort_id: 1,student_id: 1)
Member.create(cohort_id: 2,student_id: 2)
Member.create(cohort_id: 3,student_id: 3)
Member.create(cohort_id: 4,student_id: 4)
Member.create(cohort_id: 5,student_id: 5)
Member.create(cohort_id: 6,student_id: 5)
Member.create(cohort_id: 7,student_id: 4)
Member.create(cohort_id: 8,student_id: 3)
Member.create(cohort_id: 9,student_id: 2)
Member.create(cohort_id: 10,student_id: 1)
Member.create(cohort_id: 11,student_id: 1)
Member.create(cohort_id: 11,student_id: 2)
Member.create(cohort_id: 10,student_id: 3)
Member.create(cohort_id: 9,student_id: 4)
Member.create(cohort_id: 8,student_id: 5)
Member.create(cohort_id: 7,student_id: 4)
Member.create(cohort_id: 6,student_id: 3)
Member.create(cohort_id: 5,student_id: 5)
Member.create(cohort_id: 4,student_id: 2)
Member.create(cohort_id: 3,student_id: 1)
Member.create(cohort_id: 2,student_id: 2)
Member.create(cohort_id: 1,student_id: 3)
Member.create(cohort_id: 5,student_id: 4)



