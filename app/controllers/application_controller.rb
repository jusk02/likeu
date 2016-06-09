class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?
  after_filter :store_location

 

	def store_location
  # store last url - this is needed for post-login redirect to whatever the user last visited.
  return unless request.get? 
  		if (request.path != "/users/sign_in" &&
      request.path != "/users/sign_up" &&
      request.path != "/users/password/new" &&
      request.path != "/users/password/edit" &&
      request.path != "/users/confirmation" &&
      request.path != "/users/sign_out" &&
      !request.xhr?) # don't store ajax calls
    	session[:previous_url] = request.fullpath 
  		end
	end

	def after_sign_in_path_for(resource)
   session[:previous_url] || new_post_path
	end

  def remote_ip
    if request.remote_ip == '127.0.0.1'
      # Hard coded remote address
      '123.45.67.89'
    else
      request.remote_ip
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name, :age, :gender, :cellphone, :ocupation,
    	:no_contract_activities, :felixibility_importance, :need_income, :current_income, :achievement, :achievement_acomplishment, :achievement_company,
    	:achievement_boss, :achievement_phone, :hobby, :hobby_time, :hobby_validate, :special_experience, :work_hours, :work_days, :personal_achievement, :story, :pc_type, :pc_use, :internet_speed, :can_talk, :workplace, :comfort, :role, :video, :fase ]
  end

end
