json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :desc, :complete, :cat_id
  json.url task_url(task, format: :json)
end
