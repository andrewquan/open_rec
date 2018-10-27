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
  has_many :reservations
  has_many :events, through: :reservations

  mount_uploader :image, ImageUploader

  def join_group(group_id, role={})
    self.memberships.create(group_id: group_id)
    # need to add logic for becoming group admin or other roles
  end

  def attend_event(event_id, role={})
    self.reservations.create(event_id: event_id)
    # need to add logic for becoming event admin or other roles
  end
end
