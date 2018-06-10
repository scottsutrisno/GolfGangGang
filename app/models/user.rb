class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_groups
  has_many :groups, :through => :user_groups

              def user_full_name
        "#{first_name} #{last_name}"
    end

end
