collection :@project
attributes :id, :project_name, :description
child(:project_components) { attributes :id, :component_name }