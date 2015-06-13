class BuysController < ApplicationController
  def write
   cart=current_cart

   @check_p=params[:product]

   @total=0
   @buy=Buy.new
   for item in cart.line_items.each
       for select in @check_p[:commands]
           tok=select.split("/")
           if item.post.title == tok[0] && item.options == tok[1] &&item.qty.to_s==tok[2]
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

  def write_complete
   cart=current_cart
   user=User.find(session[:user_id])
   for item in cart.line_items.each
      for select in params[:check_d]
        tok=select.split("/")
        if item.post.title==tok[0] && item.options ==tok[1] &&item.qty.to_s==tok[2]
            user.point=user.point+item.point
            user.money=user.money-item.price
            item.delete
        end
      end
   end

   user.save
   cart.save

  end

  def write_directly
    @post=Post.find(params[:post_id])
    @user=User.find(session[:user_id])
  end
  
  def write_complete_directly

  end


end
