class Post < ActiveRecord::Base
    belongs_to  :user
    has_many    :comments
    validates   :category, :inclusion => { :in => ["상의", "하의", "드레스", "아우터", "악세사리"], :message=>"상의 하의 드레스 아우터 악세사리 중 하나를 선택하셔야 합니다."}
    validates   :title, :presence =>{:message => "제목을 반드시 입력하셔야 합니다."}
    validates   :price, :presence =>{:message=>"가격을 반드시 입력하셔야 합니다."}
    validates   :point, :presence =>{:message=>"포인트를 반드시 입력하셔야 합니다."}

mount_uploader  :image, ImageUploader
end
