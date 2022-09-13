class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show update destroy ]

  # GET /projects
  def index
    if params[:category_id]
      set_category
      @projects = @category.projects
      render json: @projects

    else
      @projects = Project.all
      render json: @projects
    end
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    if params[:category_id]
      @category = Category.find_by(id: params[:category_id])
      @project = @category.projects.build(project_params)
    else
      @project = Project.new(project_params)
    end

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def set_category
      @category = Category.find_by_id(params[:category_id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name, :objective, :why, :learn, :category_id)
    end
end
