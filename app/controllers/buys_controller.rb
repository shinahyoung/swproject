class BuysController < ApplicationController
  def write
   cart=current_cart
#  @chk=params[:chk_info] 
  @tok

   @total=0
   @buy=Buy.new
   for item in cart.line_items.each
       for select in @tok
           if item.post.title == select
            
               bb=item.post_id
               post=Post.find(bb)       
               line_item=@buy.line_items.build(post:post)
               line_item.options=item.options
               line_item.price=item.price
               line_item.point=item.point
               line_item.options=item.options
               line_item.qty=item.qty
               line_item.image=post.image
               line_item.save

               @total=@total+item.price    
           end
       end
   end
   @buy.save
    @user=User.find(session[:user_id])
  end

  def write_directly
    @post=Post.find(params[:post_id])
    @user=User.find(session[:user_id])
  end

  def write_complete

  end
  
  def write_complete_directly

  end


end
