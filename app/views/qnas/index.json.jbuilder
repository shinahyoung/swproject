json.array!(@qnas) do |qna|
  json.extract! qna, :id, :post_id, :qna_comment_id, :title, :name, :content
  json.url qna_url(qna, format: :json)
end
