class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :omniauthable, :confirmable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :lockable
end