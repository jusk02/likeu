
#heroku run rake testeo:resend_confirmation

namespace :user do
  task :resend_confirmation => :environment do
    users = User.where('email:jusk@likeu.co')
    users.each do |user|
      user.send_confirmation_instructions
    end
  end
end
