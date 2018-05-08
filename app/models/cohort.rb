class Cohort < ApplicationRecord
    belongs_to :course
    has_many :cohort_students
    has_many :students, through: :cohort_students
    has_one :teacher
end
