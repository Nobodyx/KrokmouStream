class User < ApplicationRecord
  acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_token
  has_many:member_media
  has_attachment :avatar, accept: [:jpg, :png, :jpeg]
  validates :username, presence: true, uniqueness: true
end
