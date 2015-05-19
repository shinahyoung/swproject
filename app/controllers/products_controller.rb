class ProductsController < ApplicationController
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
          @category = "엑세사리"
 end
 @posts = Post.where(category: @category)



  end

  def show
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
