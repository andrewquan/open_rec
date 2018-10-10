class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :omniauthable,
         :confirmable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :lockable

  has_many :memberships
  has_many :groups, through: :memberships

  def join_group(group_id)
    self.memberships.create(group_id: group_id)
  end
end
