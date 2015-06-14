class BuysController < ApplicationController
  def write
   cart=current_cart

   @check_p=params[:product]
   
   @user=User.find(session[:user_id])
@use_point=0
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
   @user=User.find(session[:user_id])
   
   for item in cart.line_items.each
      for select in params[:check_d]
        tok=select.split("/")
        if item.post.title==tok[0] && item.options ==tok[1] &&item.qty.to_s==tok[2]
            @buy=Buy.new
            @buy.user_id=session[:user_id]
            @buy.image=item.image
            @buy.price=item.price
            @buy.qty=item.qty
            @buy.title=item.post.title
            @buy.option=item.options
            @buy.point=item.point
            @buy.fromname=params[:fromname]
            @buy.fromphone=params[:fromphone]
            @buy.toname=params[:toname]
            @buy.tophone=params[:tophone]
            @buy.toaddr=params[:toaddr]
            @buy.memo=params[:memo]
            @buy.save
            post=Post.find(item.post.id)
            tmp1=post.options.split("\n")
            @tmp2=""
            for tmp3 in tmp1
                tmp4=tmp3.split("|")
                if tmp4[0]==item.options
                    tmp5=tmp4[1].to_i-item.qty
                    @tmp2=@tmp2+tmp4[0]+"|"+tmp5.to_s+"\n"
                else
                    @tmp2=@tmp2+tmp4[0]+"|"+tmp4[1]+"\n"
                end 
            end
            
            post.options=@tmp2
            post.save
            @user.point=@user.point+item.point-params[:use_point_amount_2].to_i
            @user.money=@user.money-(item.price-params[:use_point_amount_2].to_i)
            
            item.delete
        end
      end
   end

   @user.save
   cart.save

  end

  def write_directly
    if login_check2
    else
           @user=User.find(session[:user_id])
           @buy=Buy.new
           post = Post.find(params[:bb])
           opt=params[:option_menu].split("|");
           @line_item=@buy.line_items.build(post:post)
           @line_item.options=opt[0]
           @line_item.price=post.price*params[:amount].to_i
           @line_item.point=post.point*params[:amount].to_i
           @line_item.qty=params[:amount]
           @line_item.image=post.image
           @total=@line_item.price    
     
           @line_item.save
           @buy.save
   end
 end
  
  def write_complete_directly
            @user=User.find(session[:user_id])
            @buy=Buy.new
            @buy.user_id=session[:user_id]
            @buy.image=params[:image]
            @buy.price=params[:price]
            @buy.qty=params[:qty]
            @buy.title=params[:title]
            @buy.option=params[:option]
            @buy.point=params[:point]
            @buy.fromname=params[:fromname]
            @buy.fromphone=params[:fromphone]
            @buy.toname=params[:toname]
            @buy.tophone=params[:tophone]
            @buy.toaddr=params[:toaddr]
            @buy.memo=params[:memo]
            @buy.save
            post=Post.find(params[:post_id])
            tmp1=post.options.split("\n")
            @tmp2=""
            for tmp3 in tmp1
                tmp4=tmp3.split("|")
                if tmp4[0]==params[:option]
                    tmp5=tmp4[1].to_i-params[:qty].to_i
                    @tmp2=@tmp2+tmp4[0]+"|"+tmp5.to_s+"\n"
                else
                    @tmp2=@tmp2+tmp4[0]+"|"+tmp4[1]+"\n"
                end 
            end
            
            post.options=@tmp2
            post.save
            @user.point=@user.point+params[:point].to_i-params[:use_point_amount_2].to_i
            @user.money=@user.money-(params[:price].to_i-params[:use_point_amount_2].to_i)
	    @user.save	
  end


end
