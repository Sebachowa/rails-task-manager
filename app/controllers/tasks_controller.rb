class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(name: params[:name], description: params[:description], done: params[:done])
    task.save
    redirect_to task_path(task)
  end

  def edit
   @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(name: params[:name], description: params[:description], done: params[:done])
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
