class Qna < ActiveRecord::Base
    belongs_to:post
    has_many:qcomments
end
