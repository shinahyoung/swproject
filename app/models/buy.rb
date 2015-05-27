class Buy < ActiveRecord::Base
    has_many :posts
    belongs_to  :user

    validates :from, :presence => {:message => "주문하시는 분의 이름을  반드시 입력하셔야 합니다."}
    validates :to, :presence => {:message => "받으시는 분의 이름을 반드시 입력하셔야 합니다."}
    validates :addr, :presence => {:message => "배송지 주소를 반드시 입력하셔야 합니다."}
    validates :phone, :presnce => {:message => "연락처를 반드시 입력하셔야 합니다."}

end
