class BuysController < ApplicationController
  def write
    @cart=current_cart
    @line_item=@cart.line_items

    chk=params[:chk_info]
    tok=chk.split(', ')
    for item in @line_item
        for select in tok
            if item.post.title == select
                bb=item.id
                post=Post.find(bb)
                @buying=@cart.line_items.build(post: post)       
            end
        end
    end

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
