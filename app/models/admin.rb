class Admin < ApplicationRecord
    has_many :admin_notes, dependent: :destroy
    # Polymorphic relationship structure
    has_one :user, as: :user_type, autosave: true, dependent: :destroy
end
