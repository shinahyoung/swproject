class UsersController < ApplicationController
  def buy_list
    @user=User.find(session[:user_id])
    @buy=Buy.all
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
  user.money=0
  user.point=0
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

  def find_passwd
  end

  def find_passwd_ing_1
  end

  def find_passwd_ing_2
    @user=User.where(username: params[:username])[0]
    if @user.nil?
        flash[:alert]="아이디가 존재하지 않습니다"
        redirect_to :back
    else
    	@rd=rand(1000000...9999999)
    	UserNotifier.send_email(@user,@rd).deliver
    end


  end

  def change_passwd
	if params[:checknumber] == params[:rd]
		redirect_to "users/change_passwd_complete"
	else
	        flash[:alert]="인증번호가 틀렸습니다"
        	redirect_to :back
	end
  end

  def change_passwd_complete
    @user=User.where(username: params[:username])[0]
    if params[:pw] == params[:pw_2]
        @user.password=params[:pw]
        @user.save
	redirect_to "users/login"
    else
        flash[:alert]="입력하신 번호가 서로 다릅니다. 다시 입력해주세요"
        redirect_to :back
    end
  end
  def logout_complete
    reset_session
    redirect_to "/"
  end
end
