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
u.phone="000-0000-0000"
u.addr="00000000000000"
u.birth="0000-00-00"
u.save

u = User.new
u.id=2
u.username = "guest1"
u.password = "111111"
u.name="guest1"
u.phone="000-0000-0000"
u.addr="00000000000000"
u.birth="0000-00-00"
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
u.options="S\nM\nL"
u.image=File.open(File.join(Rails.root,'윙크티.JPG'))
u.save

u = Post.new
u.id=2
u.user_id=1
u.category="상의"
u.title="Flower blouse"
u.content="여성스러운 블라우스"
u.price="330000"
u.point="330"
u.qty="100"
u.options="S\nM\nL\nXL"
u.image=File.open(File.join(Rails.root,'flowerblouse.JPG'))
u.save




