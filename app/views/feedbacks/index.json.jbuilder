json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :rate, :usefulness, :content, :speaker, :anything, :api, :vendor
  json.url feedback_url(feedback, format: :json)
end
