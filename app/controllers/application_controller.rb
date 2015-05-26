class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
def rowsPerPage
 @rowsPerPage ||= 2
end

def login_check
    @current_user = nil
    if !session[:user_id].nil?
      @current_user = User.find(session[:user_id])
    else
      redirect_to "/users/login"
    end
end

#protect_from_forgery
#private
def current_cart
    Cart.find(session[:user_id])
    rescue ActiveRecord::RecordNotFound 
        cart = Cart.create 
session[:cart_id] = session[:user_id] 
       cart
end



end
