class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

enum role: [:user, :group_leader, :admin]
after_initialize :set_defualt_role, :if => :new_record?

def set_defualt_role
self.role ||= :user
end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_groups
  has_many :groups, :through => :user_groups


    def user_full_name
    "#{first_name} #{last_name}"
    end

end
