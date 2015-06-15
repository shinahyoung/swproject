# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#dfsljflsdjfls

#categories = ["상의","하의","드레스","아우터","악세사리"]


#categories.each do |category|
#  0.upto(1) do |i|
#     p = Post.new
#     p.user_id = i + 1
#     p.category = category
#     p.title = "#{category}#{i} 이름"
#     p.content = "#{category}#{i} 설명"
#     p.save
# end
#end

u = User.new
u.id=1
u.username = "admin"
u.password = "111111"
u.name="administrator"
u.phone="012-3456-789"
u.addr="서울시 노원구 월계동"
u.birth="1999-01-15"
u.point=0
u.email="vtlswhdgurv@naver.com"
u.money=0
u.save

u = User.new
u.id=2
u.username = "guest1"
u.password = "111111"
u.name="신아영"
u.phone="010-1234-9999"
u.addr="서울시 양천구"
u.birth="1999-03-22"
u.money=0
u.email="vtlswhdgurv@naver.com"
u.point=0
u.save

u = User.new
u.id=3
u.username = "guest2"
u.password = "111111"
u.name="조민경"
u.phone="010-3115-0000"
u.addr="서울시 마포구"
u.birth="1999-01-01"
u.money=0
u.email="vtlswhdgurv@naver.com"
u.point=0
u.save

u = Post.new
u.id=1
u.user_id=1
u.category="상의"
u.title="윙크티"
u.content="깜찍하고 예쁜 윙크 티"
u.price="30000"

u.point="300"
u.qty="100"
u.options="S|30\nM|30\nL|100"
u.image=File.open(File.join(Rails.root,'윙크티.JPG'))
u.save

u = Post.new
u.id=2
u.user_id=1
u.category="상의"
u.title="Flower blouse"
u.content="여성스러운 블라우스"
u.price="33000"
u.point="330"
u.qty="100"
u.options="S|100\nM|100\nL|100\nXL|100"
u.image=File.open(File.join(Rails.root,'flowerblouse.JPG'))
u.image2=File.open(File.join(Rails.root,'a.png'))
u.save

u = Post.new
u.id=3
u.user_id=1
u.category="아우터"
u.title="스웨츠 자켓"
u.content="시크한 카키 자켓"
u.price="100000"
u.point="100"
u.qty="100"
u.options="Free|100"
u.image=File.open(File.join(Rails.root,'jacket.JPG'))
u.save

u = Post.new
u.id=4
u.user_id=1
u.category="하의"
u.title="핫 팬츠"
u.content="블루 사파이어 핫팬츠"
u.price="28000"
u.point="280"
u.qty="100"
u.options="25|100\n26|100\n27|100\n28|100\n29|100\n30|100"
u.image=File.open(File.join(Rails.root,'블루사파이어.JPG'))
u.save

u = Post.new
u.id=5
u.user_id=1
u.category="드레스"
u.title="Casual Dress"
u.content="캐주얼한 오리 드레스"
u.price="20000"
u.point="200"
u.qty="100"
u.options="Free|100"
u.image=File.open(File.join(Rails.root,'오리드레스.JPG'))
u.save

u = Post.new
u.id=6
u.user_id=1
u.category="악세사리"
u.title="Sun glass"
u.content="실용성이 좋아요~!"
u.price="15000"
u.point="150"
u.qty="100"
u.options="W|100\nM|100"
u.image=File.open(File.join(Rails.root,'sunglass.JPG'))
u.save

u = Post.new
u.id=7
u.user_id=1
u.category="하의"
u.title="Rose dress"
u.content="장미 치마. 여성스러움이 강조돼요^^"
u.price="40000"
u.point="400"
u.qty="100"
u.options="S|100\nM|100\nL|100"
u.image=File.open(File.join(Rails.root,'bottom1.JPG'))
u.save

u = Post.new
u.id=8
u.user_id=1
u.category="아우터"
u.title="필립 자켓"
u.content="직장인들이 입기 좋아요."
u.price="50000"
u.point="500"
u.qty="100"
u.options="S|100\nM|100\nL|100"
u.image=File.open(File.join(Rails.root,'필립자켓.JPG'))
u.save






