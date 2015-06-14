class Buy < ActiveRecord::Base
#    has_many :posts
    belongs_to  :user
    has_many  :line_items


    def commands=(commands)
        commands.reject(&:blank?)
    end
end
