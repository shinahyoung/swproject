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

  def find_username
  end

  def find_username_complete
    check=0
    @user=nil
    user_array=User.where(name: params[:name])
    for u in user_array
	if u.birth == params[:birth]
		check=1
		break
	end
    end
    if check==0
        flash[:alert]="아이디가 존재하지 않습니다"
        redirect_to :back
    else
	@user=u
    end		
  end


  def find_passwd

  end

def edit
@user=User.find(session[:user_id])
end

  def edit_complete
	  user=User.find(params[:user_id])
	
	  user.name=params[:name]
	  user.phone=params[:phone]
	  user.addr=params[:addr]
	  user.email=params[:email]
	  user.birth=params[:birth]
	  if params[:password] == params[:retype_password]
	     user.password = params[:password]
	  else
	     flash[:alert] = "비밀번호가 맞지 않습니다."
	     redirect_to :back
	  end
          if user.save
          else
            flash[:alert] = user.errors.values.flatten.join(" ")
            redirect_to :back
          end

  end

  def find_passwd_complete
    @user=User.where(username: params[:username])[0]
    if @user.nil?
        flash[:alert]="아이디가 존재하지 않습니다"
        redirect_to :back
    else
    	@rd=rand(1000000...9999999)
	@user.password=@rd
	@user.save
    	UserNotifier.send_email(@user,@rd).deliver 
    end	
  end


  def logout_complete
    reset_session
    redirect_to "/"
  end
end
