class Student < ApplicationRecord
    has_many :student_notes, dependent: :destroy
    has_many :cohorts, through: :cohort_students
end
