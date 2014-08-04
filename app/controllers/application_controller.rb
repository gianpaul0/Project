class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :evaluate_sign_in
  
  def evaluate_sign_in
    
    
    if ((!request.original_url.eql?(root_url) and !request.original_url.eql? (root_url+"users/sign_in"))and !user_signed_in? )
      redirect_to root_url+"users/sign_in"
    end
  end
  
  
  def after_sign_in_path_for(user)
    
    root_url
      
  end
  
end
