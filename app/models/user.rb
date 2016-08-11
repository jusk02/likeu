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


      #achievement and comfort must be updated in live for all users registered  in 8/8/2016 or prior

	after_create do

      if self.hobby_time == nil
        self.hobby_time = 0 
      end

      if self.work_hours == nil
        self.work_hours = 0 
      end

      if self.work_days == nil
        self.work_days = 0 
      end
      

      self.form_score = 0

      unless name.blank? || city.blank? || age.blank? || gender.blank? || cellphone.blank? || email.blank?
        self.form_score += 5
      end

      unless self.no_contract_activities == "No he tenido"
        self.form_score += 10
      end

      if self.achievement ==  "Aumentar las ventas" || self.achievement == "Mejorar servicio"
        self.form_score += 10
      end

      if self.hobby_time >= 4
        if self.hobby_validate ==  true
          self.form_score += 10
        end
      end

      if self.special_experience.include? "Call center"
        self.form_score += 15
      elsif self.special_experience.include? "Teletrabajo"
        self.form_score += 10        
      elsif self.special_experience.include? "Ventas"
        self.form_score += 10
      elsif self.special_experience.include? "Soporte tecnico"
        self.form_score += 5        
      end

      if self.need_income == "500.000 - 1´000.000 Mensuales"
        self.form_score += 5
        if self.current_income == self.need_income
          self.form_score += 5
        end
      end

       if self.need_income == "1’000.000 - 1’500.000 Mensuales"
        self.form_score += 5
        if self.need_income == self.current_income || self.current_income == "500.000 - 1´000.000 Mensuales"
          self.form_score += 5
        end
      end

      if self.felixibility_importance ==  "Me encantaria"
        self.form_score += 10
      elsif self.felixibility_importance == "Nose pero quiero conocer"
        self.form_score += 5        
      end

      unless self.pc_type == "No tengo"
        self.form_score += 5
      end
      
      if self.pc_use == "Personal"
        self.form_score += 5
      end

      if self.work_hours * self.work_days >= 20
        self.form_score += 10
      end
      
      if self.comfort == "Funciona"
        self.form_score += 10
      elsif self.comfort == "Debo hacer ajustes"
        self.form_score += 5     
      end



		  self.update_attribute(:fase, 1)
    	self.update_attribute(:active, "activo")

      if self.email == 'andres.garcia@dreamjobs.com.co'
        self.role = 3
        self.update_attribute(:role, 3)
      end

      if self.email == 'mely@likeu.co'
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
