json.array!(@projects) do |project|
  json.extract! project, :id, :title, :status, :applications, :advantages, :student_details, :suggestions
  json.url project_url(project, format: :json)
end
