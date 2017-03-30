class ProjectsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @project = @category.projects.new
  end

  def create
    @category = Category.find(params[:category_id])
    @project = @category.projects.new(project_params)
    if @project.save
      flash[:notice] = "project successfully created!"
      redirect_to category_path(@project.category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
  end

  def update
    @category =  Category.find(params[:category_id])
    @project = Project.find(params[:id])
    if @category.projects.update(project_params)
      flash[:notice] = "project successfully updated!"
      redirect_to category_path(@project.category)
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "project successfully deleted!"
    redirect_to category_path(@project.category)
  end

  private
  def project_params
    params.require(:project).permit(:project, :description)
  end
end
