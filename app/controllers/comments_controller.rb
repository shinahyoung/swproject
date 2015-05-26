class CommentsController < ApplicationController
  def comments_category
  end

  def show
   @comments=Comment.all
  end
  
  def look
    @comment=Comment.find(params[:id])
  end

  def write
  end

  def write_complete
   comment=Comment.new
   comment.content= params[:comment_content]
   comment.name= params[:comment_name]
   comment.subject =params[:comment_subject]
   comment.user_id=session[:user_id]
   comment.hits= params[:comment_hits]

   if comment.save
      flash[:alert] ="저장되었습니다."
      redirect_to "/comments/show/"
    else
      flash[:alert] = comment.errors.values.flatten.join(' ')
      redirect_to :back
    end


  end

  def edit
   @comment = Comment.find(params[:id])
  end


  def edit_complete
   comment=Comment.find(params[:id])
   comment.content= params[:comment_content]
   comment.name= params[:comment_name]
   comment.subject =params[:comment_subject]
   comment.user_id=session[:user_id]
   comment.hits= params[:comment_hits]

   if comment.save
      flash[:alert] ="수정되었습니다."
      redirect_to "/comments/look/#{comment.id}"
    else
      flash[:alert] = comment.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

 def delete_complete
  comment=Comment.find(params[:id])
  comment.destroy
  flash[:alert] ="삭제되었습니다!"
  redirect_to "/comments/show"
 
 end
end
