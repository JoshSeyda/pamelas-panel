class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    has_many :student_notes, dependent: :destroy
    has_many :cohorts, through: :members
    # Polymorphic relationship structure
    has_one :user, as: :user_type, autosave: true, dependent: :destroy
end
