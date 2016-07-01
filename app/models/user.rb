class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


# mount_uploader :avatar, AvatarUploader

# validates :name, presence: true
# validates :age, presence: true
# validates :gender, presence: true


	after_create do
		  self.update_attribute(:fase, 1)
    	self.update_attribute(:active, "activo")
    	if role.blank?
    		self.update_attribute(:role, 1)
    	end
    	self.password = self.cellphone
    	self.update_attribute(:video_done, false)
   	end

 



end
