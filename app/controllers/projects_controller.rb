class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:yay] = 'Yay! New project is created!'
      redirect_to projects_path
    else
      flash[:alert] = 'Project did not get created'
      render :new
    end
  end


  def edit
    @project = Project.find(params[:id])
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:name, :client, :description, :completed)
  end



end
