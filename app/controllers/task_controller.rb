class TaskController < Sinatra::Base
    # Add your routes here
  get "/task" do
    task = Task.all
    task.to_json()
  end

  #Get single task
  get"/task/:id" do
    task = Task.find_by(id: params[:id])
    task.to_json()
  end

  #Post task
  post "/task/" do
    task = Task.create(
      name: params[:name],
      description: params[:description],
      completed: params[:completed],
      date_due: params[:date_due],
    )
    task.save()
    {
      "Message": "New task created",
      "Status": "HTTP_200_OK"
  }.to_json()
  end

  #Patch task
  patch "/task/update/:id" do
    task = Task.find_by(id: params[:id])

    task.update(
      name:params[:name],
      description: params[:description],
      completed: params[:completed],
      date_due: params[:date_due],
    )
    task.save(
        {
            "Message": "Task updated"
        }
    )
    task.to_json()
  end
  #Delete task
  delete "/task/:id" do
    task = Task.find_by(id: params[:id])
    task.destroy
    {
      "Message": "task deleted successfuly",
      "Status": "HTTP_Status_OK"
  }.to_json()
  end
end