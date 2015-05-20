class ProductsController < ApplicationController
  before_action :login_check
  skip_before_action  :login_check, :only => [:posts, :posts_category, :show]

  def posts
    @posts=Post.all
  end

  def posts_category
  case params[:category]
      when "top"
            @category = "상의"
      when "bottom"
            @category = "하의"
      when "dress"
            @category = "드레스"
      when "outer"
            @category = "아우터"
      else
          @category = "악세사리"
 end
 @posts = Post.where(category: @category)



  end

  def show
    @post=Post.find(params[:id])
    @user=session[:user_id]
  end

  def write_complete
        post = Post.new
        post.user_id=session[:user_id]
        post.category = params[:post_category]
        post.title = params[:post_title]
        post.content = params[:post_content]
        post.image=params[:image]
        if post.save
           flash[:alert] = "저장되었습니다."
           redirect_to "/products/show/#{post.id}"
        else
           flash[:alert] = post.errors.values.flatten.join(' ')
           redirect_to :back
        end
  end

  def write
  end

  def edit
 @post = Post.find(params[:id])    
   if @post.user_id != session[:user_id]
       flash[:alert] = "수정 권한이 없습니다."
       redirect_to :back
   end
  end

  def edit_complete
   post = Post.find(params[:id])
   post.category = params[:post_category]
   post.title = params[:post_title]
   post.content = params[:post_content]
   if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/products/show/#{post.id}"
   else
      flash[:alert] = post.errors.values.flatten.join(' ')
      edirect_to :back
   end
  
  end

  def delete_complete
   post = Post.find(params[:id])
   post.destroy
   flash[:alert] = "삭제되었습니다."
   redirect_to "/"
  end
end
