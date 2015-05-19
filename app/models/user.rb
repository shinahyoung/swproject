class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :username, :presence => { :message => "아이디를 반드시 입력하셔야 합니다." }
  validates :username, :uniqueness => { :message => "이미 존재하는 아이디입니다.", :case_sensitive => false }
  validates :password, :length => { :minimum => 6, :too_short => "최소 6자 이상의 비밀번호를 입력하셔야 합니다." }
validates :name, :presence => { :message => "이름을 반드시 입력하셔야 합니다." }
validates :phone, :presence => { :message => "전화번호를 반드시 입력하셔야 합니다." }
validates :addr, :presence => { :message => "주소를 반드시 입력하셔야 합니다." }
validates :birth, :presence => { :message => "생년월일을 반드시 입력하셔야 합니다." }

end
