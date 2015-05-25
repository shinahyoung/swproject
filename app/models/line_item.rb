class LineItem < ActiveRecord::Base
    belongs_to:post
    belongs_to:cart
    validates   :qty,  :presence=>true
end
