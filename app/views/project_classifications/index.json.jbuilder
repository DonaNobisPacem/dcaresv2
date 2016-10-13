json.array!(@project_classifications) do |project_classification|
  json.extract! project_classification, :id, :description
  json.url project_classification_url(project_classification, format: :json)
end
