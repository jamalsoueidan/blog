class ProjectsController < ApplicationController
  def index
    @projects = Project.order('developed_at desc').paginate(:page => params[:page], :per_page => 12)
  end

  def show
    @project = Project.find(params[:id].to_i)
  end

  before_filter :set_title
  private
    def set_title
      @title = "Projects"
      @body = "The list is NOT complete!"
    end
end
