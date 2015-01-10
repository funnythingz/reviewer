json.array!(@reviews) do |review|
  json.extract! review, :id, :reviewer, :mail, :comment, :status, :clinic_id, :action
  json.url review_url(review, format: :json)
end
