module DiviseWhitelist
  extend ActiveSupport::Concern
  
  include do
    before_filter :configure_permitted_parameters, if: :devise_controller?
  end 
 
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:signup, keys: [:name])
  devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
