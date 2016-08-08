class RegistrationsController < Devise::RegistrationsController

	

	 protected


  def after_sign_up_path_for(resource)
    '/' # Or :prefix_to_your_route
  end

  def after_inactive_sign_up_path_for(resource_or_scope)
    session["user_return_to"] || root_path
  end

 def update_resource(resource, params)
    resource.update_without_password(params)
  end

def after_update_path_for(resource)
  user_index_path
end

  
end
