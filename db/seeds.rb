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

