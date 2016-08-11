
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


end

