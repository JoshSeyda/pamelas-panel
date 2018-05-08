class Admin < ApplicationRecord
    has_many :admin_notes, dependent: :destroy
end
