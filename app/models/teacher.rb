class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    has_many :teacher_notes, dependent: :destroy
    has_one :user, as: :user_type, autosave: true, dependent: :destroy
end
