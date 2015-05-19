# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = ["상의","하의","드레스","아우터","악세사리"]

categories.each do |category|
  0.upto(1) do |i|
      p = Post.new
      p.user_id = i + 1
      p.category = category
      p.title = "#{category}#{i} 이름"
      p.content = "#{category}#{i} 설명"
      p.save
  end
end
