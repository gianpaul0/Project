class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :evaluate_sign_in
  
  def evaluate_sign_in
    
    
    if ((!request.original_url.eql?(root_url) and !request.original_url.eql? (root_url+"admins/sign_in"))and !admin_signed_in? )
      redirect_to root_url+"admins/sign_in"
    end
  end
  
  
  def after_sign_in_path_for(admin)
    
    root_url
      
  end
  
end
