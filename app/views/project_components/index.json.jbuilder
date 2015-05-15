json.array!(@project_components) do |project_component|
  json.extract! project_component, :id, :project_id
  json.url project_component_url(project_component, format: :json)
end
