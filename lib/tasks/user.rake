
#heroku run rake user:resend_confirmation

namespace :user do

  # task :resend_confirmation => :environment do
  #   users = User.where(confirmation_token:!= nil)
  #   users.each do |user|
  #     user.send_confirmation_instructions
  #   end
  # end


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
      user.update_attribute(:video1, nil)
      user.update_attribute(:video2, nil)
      user.update_attribute(:video3, nil)
      user.update_attribute(:video_ans1, nil)
      user.update_attribute(:video_ans2, nil)
      user.update_attribute(:video_ans3, nil)

    end
  end



#heroku run rake user:rerun_scores
task :rerun_scores => :environment do
    users = User.all
    users.each do |user|

      if user.hobby_time == nil
        user.update_attribute(:hobby_time, 0)  
      end

      if user.work_hours == nil
        user.update_attribute(:work_hours, 0)  
      end

      if user.work_days == nil
        user.update_attribute(:work_days, 0)  
      end
    
    @numero = 0
     
    unless user.name.blank? || user.city.blank? || user.age.blank? || user.gender.blank? || user.cellphone.blank? || user.email.blank?
      @numero += 5
    end
     

      unless user.no_contract_activities == "No he tenido"
       @numero += 10
      end

      if user.achievement ==  "Aumentar las ventas" || user.achievement == "Mejorar servicio"
       @numero += 10
      end

      if user.hobby_time >= 3
        if user.hobby_validate ==  true
         @numero += 10
        end
      end

      if user.special_experience.include? "Call center"
       @numero += 15
      elsif user.special_experience.include? "Teletrabajo"
       @numero += 10        
      elsif user.special_experience.include? "Ventas"
       @numero += 10
      elsif user.special_experience.include? "Soporte tecnico"
       @numero += 5        
      elsif user.special_experience == "Si"
       @numero += 10        
      end

      if user.need_income == "500.000 - 1´000.000 Mensuales"
       @numero += 5
        if user.current_income == user.need_income
         @numero += 5
        end
      end

       if user.need_income == "1’000.000 - 1’500.000 Mensuales"
       @numero += 5
        if user.need_income == user.current_income || user.current_income == "500.000 - 1´000.000 Mensuales"
         @numero += 5
        end
      end

      if user.felixibility_importance ==  "Me encantaria"
       @numero += 10
      elsif user.felixibility_importance == "Nose pero quiero conocer"
       @numero += 5        
      end

      unless user.pc_type == "No tengo"
       @numero += 5
      end
      
      if user.pc_use == "Personal"
       @numero += 5
      end

      if user.work_hours * user.work_days >= 20
        @numero += 10
      end
      
      if user.comfort == "Funciona"
       @numero += 10
      elsif user.comfort == "Debo hacer ajustes"
       @numero += 5     
      end
      
    user.update_attribute(:form_score, @numero)  
      
    end
  end



end

