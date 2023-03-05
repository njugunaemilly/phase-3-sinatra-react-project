class ProjectController < Sinatra::Base
  
  # Add your routes here
  get "/project" do
    projects = Project.all
    project.to_json()
  end

  #Get single project
  get"/project/:id" do
    project = Project.find_by(id: params[:id])
    project.to_json()
  end

  #Post Project
  post "/project/" do
    project = Project.create(
      name: params[:name],
    )
    project.save()
    {
      "Message": "New project created",
      "Status": "HTTP_200_OK"
  }.to_json()
  end

  #Patch project
  patch "/project/update/:id" do
    project = Project.find_by(id: params[:id])

    project.update(
      name:params[:name],
    )
    project.to_json()
  end
  #Delete project
  delete "/project/:id" do
    project = Project.find_by(id: params[:id])
    project.destroy
    {
      "Message": "Project deleted successfuly",
      "Status": "HTTP_Status_OK"
  }.to_json()
  end
end
