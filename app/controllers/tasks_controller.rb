class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    @task = Task.create( params[:task] )
    redirect_to :root
  end
end