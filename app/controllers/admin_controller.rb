class AdminController < ApplicationController
  def show
   @users=User.all
  end

  def delete_user
  end
end
