class ProjectsController < ApplicationController
  def new
  	@project=Project.new
  end
  def index 
  	@project=Project.all
  end

  def create
 	@project=Project.create(project_params)
 	if @project.save
 		flash[:success]="Project Added"
 	redirect_to root_path
 	else
 		flash[:error]="Somthig goes wrong"
 			render 'new'
 	end

  end

  def show
  	@project=Project.find(params[:id])

  end
  
  def edit
  	@project=Project.find(params[:id])

  end

  def update
  	@project=Project.find(params[:id])
	@project.update_attributes(project_params)
	if @project.save
		flash[:success]="Project Added"
	redirect_to root_path
	else
		flash[:error]="Somethig goes wrong"
		redirect_to edit_project_path(params[:id])
	end

  end

  def destroy
  	Project.find(params[:id]).destroy
  	redirect_to root_path
  end
  private 
  def project_params
  	params.require(:project).permit(:name,:code,:description,:billing_type,:start_date,:dead_date,:end_date,:github_url,:status)
  end
end
