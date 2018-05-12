class Cohort < ApplicationRecord
    belongs_to :course
    has_many :members
    has_many :students, through: :members
    has_one :teacher
end
