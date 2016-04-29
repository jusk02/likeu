class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


mount_uploader :avatar, AvatarUploader

validates :username, presence: true
validates :birthdate, presence: true
validates :gender, presence: true
validates :ocupation, presence: true
validates :phone_contact, presence: true
validates :type_computer, presence: true
validates :comfort, presence: true
validates :being, presence: true
validates :do, presence: true
validates :motivation, presence: true



end
