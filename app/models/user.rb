class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


# mount_uploader :avatar, AvatarUploader

# validates :name, presence: true
# validates :age, presence: true
# validates :gender, presence: true


	before_create do
    	self.fase = 1
    	self.active = "activo"
    	self.role = 1 if role.blank?
    	#self.password = self.cellphone
  	end

 



end
