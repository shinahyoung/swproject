class Qcomment < ActiveRecord::Base
    belongs_to  :user
    belongs_to  :qna
validates:comment,:presence=>{:message=>"내용을 반드시 입력하셔야 합니다"}
    end
