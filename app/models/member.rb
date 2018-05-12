class Member < ApplicationRecord
    belongs_to :cohort
    belongs_to :student
end
