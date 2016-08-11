
#heroku run rake user:resend_confirmation

namespace :user do

  task :resend_confirmation => :environment do
    users = User.where(confirmation_token:!= nil)
    users.each do |user|
      user.send_confirmation_instructions
    end
  end


#heroku run rake user:testeo
  task :testeo => :environment do
    users = User.where(email:'jusk@likeu.co')
    users.each do |user|
      user.send_confirmation_instructions
    end
  end


#heroku run rake user:spec
task :spec => :environment do
    users = User.where(special_experience:'0')
    users.each do |user|
      
      user.update_attribute(:special_experience, "Si")
      
    end
  end

  #heroku run rake user:avance_masivo
task :avance_masivo => :environment do
    users = User.where(fase:1)
    users.each do |user|
      
      user.update_attribute(:fase, 2)
      user.update_attribute(:video_done, false)
      user.update_attribute(:video_1, nil)
      user.update_attribute(:video_2, nil)
      user.update_attribute(:video_3, nil)
      user.update_attribute(:video_ans1, nil)
      user.update_attribute(:video_ans2, nil)
      user.update_attribute(:video_ans3, nil)
      
      
    end
  end



#heroku run rake user:rerun_scores
task :rerun_scores => :environment do
    users = User.all
    users.each do |user|
      
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
      
      
    end
  end



end

