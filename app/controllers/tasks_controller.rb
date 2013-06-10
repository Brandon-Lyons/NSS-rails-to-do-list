class TasksController < ApplicationController

  def create
    @task = Task.create(description: params[:task][:description])
    if @task.save
      ListTask.create(list_id: params[:task][:list].to_i, task_id: Task.last.id)
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def edit
    @task = Task.find( params[:id] )
  end

  def update
    @task = Task.find( params[:id] )
    if @task.update_attributes(params[:task])
      redirect_to :root
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find( params[:id] )
    @task.destroy
    redirect_to :root
  end
  
end