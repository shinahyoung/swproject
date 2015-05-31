class AdminController < ApplicationController
  def show
   @users=User.all
   @user=session[:user_id]

  end

  def delete_user
   user=User.find(params[:id])
   user.destroy
   flash[:alert]="유저의 계정이 삭제되었습니다."
   redirect_to "/admin/show"
  end
end
