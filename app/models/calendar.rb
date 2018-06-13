class Calendar < ApplicationRecord
    has_one :group, through: :user
    belongs_to :users, required: false
end
