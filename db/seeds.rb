# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create(firstname:'Jorsh', lastname: 'TSSS', username: 'turnstile', password_digest: 'password', email: 'test@email.com')
# Course.create(name: 'Astrophysics', description: 'Physics, in space!')
# Course.create(name: 'Economics', description: 'Money, trade, and the simultaneous downfall and foundation of civilization')

# Teacher.create(firstname: 'Michio', lastname: 'Kaku', username: 'michiokakau', email: 'michio@email.com',password_digest: 'password', age: 50 , salary: 50000, education: 'Phd', birthday:'1988-02-15' , specialty: ['astrophysics', 'quantum_mechanics'])
# Teacher.create(firstname: 'Neil', lastname: 'Degrasse Tyson', username: 'NDG', email: 'neil@email.com',password_digest: 'password', age: 50 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['astrophysics', 'cosmology'])
# Teacher.create(firstname: 'Nassim', lastname: 'Taleb', username: 'nassimtaleb', email: 'nassim@email.com',password_digest: 'password', age: 50 , salary: 70000, education: 'Phd', birthday:'1988-02-15' , specialty: ['economics', 'finance', 'antifragility'])
# Teacher.create(firstname: 'David', lastname: 'Graeber', username: 'davidgraeber', email: 'david@email.com',password_digest: 'password', age: 50 , salary: 50000, education: 'Phd', birthday: '1988-02-15', specialty: ['economics', 'anthropology'])

# Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 1, teacher_id: 1 )
# Cohort.create(start_date:'2018-06-01' , end_date: '2019-01-01', course_id: 1, teacher_id: 2 )
# Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 3 )
# Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 3 )
# Cohort.create(start_date: '2018-06-01', end_date: '2019-01-01', course_id: 2, teacher_id: 4)

# Student.create(firstname: 'Liz', lastname: 'Lund', username: 'lemon', email: 'liz@email.com',password_digest: 'password', age: 28 , birthday: '1988-02-15' , education: 'Masters')
# Student.create(firstname: 'Harrison', lastname: 'Chiu', username: 'angola', email: 'harrison@email.com',password_digest: 'password', age:29 , birthday:'1988-02-15' , education: 'Masters')
# Student.create(firstname: 'Maddy', lastname: 'Strassler', age:26 , username: 'madstrass', email: 'maddy@email.com',password_digest: 'password', birthday: '1988-02-15', education: 'Masters')
# Student.create(firstname: 'Darren', lastname: 'Kong', age:30 , username: 'diversifiedbonds', email: 'darren@email.com',password_digest: 'password', birthday:'1988-02-15' , education: 'Bachelors')

CohortStudent.create(cohort_id: 1,student_id: 1)
CohortStudent.create(cohort_id: 2,student_id: 2)
CohortStudent.create(cohort_id: 3,student_id: 3)
CohortStudent.create(cohort_id: 4,student_id: 4)
CohortStudent.create(cohort_id: 5,student_id: 5)
CohortStudent.create(cohort_id: 6,student_id: 5)
CohortStudent.create(cohort_id: 7,student_id: 4)
CohortStudent.create(cohort_id: 8,student_id: 3)
CohortStudent.create(cohort_id: 9,student_id: 2)
CohortStudent.create(cohort_id: 10,student_id: 1)
CohortStudent.create(cohort_id: 11,student_id: 1)
CohortStudent.create(cohort_id: 11,student_id: 2)
CohortStudent.create(cohort_id: 10,student_id: 3)
CohortStudent.create(cohort_id: 9,student_id: 4)
CohortStudent.create(cohort_id: 8,student_id: 5)
CohortStudent.create(cohort_id: 7,student_id: 4)
CohortStudent.create(cohort_id: 6,student_id: 3)
CohortStudent.create(cohort_id: 5,student_id: 5)
CohortStudent.create(cohort_id: 4,student_id: 2)
CohortStudent.create(cohort_id: 3,student_id: 1)
CohortStudent.create(cohort_id: 2,student_id: 2)
CohortStudent.create(cohort_id: 1,student_id: 3)
CohortStudent.create(cohort_id: 5,student_id: 4)