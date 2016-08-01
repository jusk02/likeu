
#heroku run rake user:resend_confirmation

namespace :user do

  task :resend_confirmation => :environment do
    users = User.where('confirmation_token IS NOT NULL')
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
end


#heroku run rake user:update_special
task :update_special => :environment do
    users = User.where(special_experience:'0')
    users.each do |user|
      user.special_experience="Si"
      
    end
  end