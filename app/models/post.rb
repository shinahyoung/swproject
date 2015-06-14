class Post < ActiveRecord::Base
has_many:qna, dependent: :destroy
belongs_to  :user
    has_many    :buy
    has_many    :line_item
    has_many    :reviews
    has_many    :cart
    before_destroy  :ensure_not_referenced_by_any_line_item

    validates   :category, :inclusion => { :in => ["상의", "하의", "드레스", "아우터", "악세사리"], :message=>"상의 하의 드레스 아우터 악세사리 중 하나를 선택하셔야 합니다."}
    validates   :title, :presence =>{:message => "제목을 반드시 입력하셔야 합니다."}
    validates   :price, :presence =>{:message=>"가격을 반드시 입력하셔야 합니다."}
    validates   :point, :presence =>{:message=>"포인트를 반드시 입력하셔야 합니다."}

mount_uploader  :image, ImageUploader
mount_uploader  :image2, ImageUploader


 private
   def ensure_not_referenced_by_any_line_item
       if line_items.empty? 
          return true
       else
         errors.add(:base, 'Line Items present') 
         return false
       end
    end

end
