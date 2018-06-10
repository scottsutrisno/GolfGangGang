class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, :through => :user_groups

            def user_full_name
        "#{first_name} #{last_name}"
    end
end
