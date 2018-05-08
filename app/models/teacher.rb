class Teacher < ApplicationRecord
    has_many :teacher_notes, dependent: :destroy
end
