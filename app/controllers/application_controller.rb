class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
		
	def after_sign_in_path_for(resource)
		agent_websites_path
	end  



	before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
	  def configure_permitted_parameters
		    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name , :last_name , :dob , :country , :gender ])
				devise_parameter_sanitizer.permit(:account_update, keys: [:first_name , :last_name , :dob , :country , :gender ])
		end


end
