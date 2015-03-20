json.array!(@reviews) do |review|
  json.extract! review, :id, :review, :book_id, :user_id
  json.url review_url(review, format: :json)
end
