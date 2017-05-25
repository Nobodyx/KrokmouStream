class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many:member_media
  has_attachment :avatar, accept: [:jpg, :png, :jpeg]
  validates :username, presence: true, uniqueness: true
  acts_as_token_authenticatable
end
