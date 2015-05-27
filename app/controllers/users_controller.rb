class UsersController < ApplicationController
  def buy
  end
  def signup
  end

  def signup_complete
  user = User.new
  user.username = params[:username]
  user.name=params[:name]
  user.phone=params[:phone]
  user.addr=params[:addr]
  user.email=params[:email]
  user.birth=params[:birth]
  if params[:password] == params[:retype_password]
     user.password = params[:password]
     if user.save
        flash[:alert] = "성공적으로 가입되었습니다."
    else
         flash[:alert] = user.errors.values.flatten.join(" ")

         redirect_to :back
    end
  else
     flash[:alert] = "비밀번호가 맞지 않습니다."
     redirect_to :back
  end
  end

  def login
  end

  def login_complete
       user = User.where(username: params[:username])[0]
    if user.nil?
      flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
      redirect_to :back
    elsif user.password != params[:password]
      flash[:alert] = "아이디 또는 비밀번호를 잘못 입력하셨습니다."
      redirect_to :back
    else
      session[:user_id] = user.id
# redirect_to "/"
#        redirect_back_or_default(request.referer)
      redirect_back_or_default
    end
  end

  def logout_complete
    reset_session
    redirect_to "/"
  end
end
