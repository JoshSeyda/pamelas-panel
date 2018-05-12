class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
    has_many :admin_notes, dependent: :destroy
    has_one :user, as: :user_type, autosave: true, dependent: :destroy
end
