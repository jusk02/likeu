
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
      
     user.form_score = 0

      
     user.form_score += 5
     

     #  unless user.no_contract_activities == "No he tenido"
     #    user.form_score += 10
     #  end

     #  if user.achievement ==  "Aumentar las ventas" || user.achievement == "Mejorar servicio"
     #    user.form_score += 10
     #  end

     #  if user.hobby_time >= 4
     #    if user.hobby_validate ==  true
     #      user.form_score += 10
     #    end
     #  end

     #  if user.special_experience.include? "Call center"
     #    user.form_score += 15
     #  elsif user.special_experience.include? "Teletrabajo"
     #    user.form_score += 10        
     #  elsif user.special_experience.include? "Ventas"
     #    user.form_score += 10
     #  elsif user.special_experience.include? "Soporte tecnico"
     #    user.form_score += 5        
     #  end

     #  if user.need_income == "500.000 - 1´000.000 Mensuales"
     #    user.form_score += 5
     #    if user.current_income == user.need_income
     #      user.form_score += 5
     #    end
     #  end

     #   if user.need_income == "1’000.000 - 1’500.000 Mensuales"
     #    user.form_score += 5
     #    if user.need_income == user.current_income || user.current_income == "500.000 - 1´000.000 Mensuales"
     #      user.form_score += 5
     #    end
     #  end

     #  if user.felixibility_importance ==  "Me encantaria"
     #    user.form_score += 10
     #  elsif user.felixibility_importance == "Nose pero quiero conocer"
     #    user.form_score += 5        
     #  end

     #  unless user.pc_type == "No tengo"
     #    user.form_score += 5
     #  end
      
     #  if user.pc_use == "Personal"
     #    user.form_score += 5
     #  end

     #  if user.work_hours * user.work_days >= 20
     #    user.form_score += 10
     #  end
      
     #  if user.comfort == "Funciona"
     #    user.form_score += 10
     #  elsif user.comfort == "Debo hacer ajustes"
     #    user.form_score += 5     
     #  end
      
      
    end
  end



end

