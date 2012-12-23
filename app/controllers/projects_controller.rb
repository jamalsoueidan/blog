class ProjectsController < ApplicationController
  def index
    @projects = Project.order('created_at desc').paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @project = Project.find(params[:id].to_i)
  end

  before_filter :set_title
  private
    def set_title
      @title = "Projects"
      @body = "Some of the projects I developed "
    end
end
