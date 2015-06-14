class Qna < ActiveRecord::Base
    belongs_to:post
    belongs_to:qna_comment
end
