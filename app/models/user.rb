class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


# mount_uploader :avatar, AvatarUploader

validates :name, presence:  {message: "Es indispensable que sepamos como te llamas"}
validates :age, presence:  {message: "Necesitamos saber tu edad"}
validates :email, presence: {message: "Debes introcucir un correo electronico"}
validates :cellphone, presence: {message: "Necesitamos este numero para'poder contactarte"}
validates :city, presence: {message: "La mejor forma de encontrar campañas afines a ti es saber donde estas"}


      # :age
      # :gender
      # :cellphone
      # :city
      # :ocupation
      # :no_contract_activities
      # :felixibility_importance
      # :need_income
      # :current_income
      # :achievement
      # :achievement_acomplishment
      # :achievement_company
      # :achievement_boss
      # :achievement_phone
      # :hobby
      # :hobby_time
      # :hobby_validate
      # :special_experience
      # :work_hours
      # :work_days
      # :personal_achievement
      # :story
      # :pc_type
      # :pc_use
      # :internet_speed
      # :can_talk
      # :workplace
      # :comfort


   
     


	after_create do
		  self.update_attribute(:fase, 1)
    	self.update_attribute(:active, "activo")

      if self.email == 'andres.garcia@dreamjobs.com.co'
        self.role = 3
        self.update_attribute(:role, 3)
      end

      if self.email == 'comunicaciones@likeu.co'
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
      if achievement?
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
      if comfort?
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
