class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


# mount_uploader :avatar, AvatarUploader

validates :name, presence: true
validates :age, presence: true
validates :gender, presence: true


	after_create do
		  self.update_attribute(:fase, 1)
    	self.update_attribute(:active, "activo")

      if self.email == 'andres.garcia@dreamjobs.com.co'
        self.role = 3
        self.update_attribute(:role, 3)
      end

      if self.email == 'jusk@likeu.co'
        self.role = 3
        self.update_attribute(:role, 3)
      end

      if self.email == 'juanesrincon@gmail.com'
        self.role = 3
        self.update_attribute(:role, 3)
      end
      
      if ocupation.blank?
        self.update_attribute(:ocupation, "No respondio")
      end
      if achievement.blank?
        self.update_attribute(:achievement, "No respondio")
      end
      if special_experience.blank?
        self.update_attribute(:special_experience, "No respondio")
      end
      if felixibility_importance.blank?
        self.update_attribute(:felixibility_importance, "No respondio")
      end
      if can_talk.blank?
        self.update_attribute(:can_talk, "No respondio")
      end
      if workplace.blank?
        self.update_attribute(:workplace, "No respondio")
      end
      if comfort.blank?
        self.update_attribute(:comfort, "No respondio")
      end
    	if role.blank?
    		self.update_attribute(:role, 1)
    	end

      if pc_type == 'No tengo'
        self.update_attribute(:rejected, true)
      end
      if achievement == 'No tengo experiencia'
        self.update_attribute(:rejected, true)
      end
    	self.password = self.cellphone
    	self.update_attribute(:video_done, false)

      
   	end

 



end
