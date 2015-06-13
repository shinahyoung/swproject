class Buy < ActiveRecord::Base
#    has_many :posts
    belongs_to  :user
    has_many  :line_items


    validates :fromname, :presence => {:message => "주문하시는 분의 이름을  반드시 입력하셔야 합니다."}
    validates :toname, :presence => {:message => "받으시는 분의 이름을 반드시 입력하셔야 합니다."}
    validates :toaddr, :presence => {:message => "배송지 주소를 반드시 입력하셔야 합니다."}
    validates :tophone, :presence => {:message => "연락처를 반드시 입력하셔야 합니다."}

    def commands=(commands)
        commands.reject(&:blank?)
    end
end
