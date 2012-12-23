class PostsController < ApplicationController  
  def index
    @posts = Post.order('created_at desc').paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @post = Post.find(params[:id].to_i)
  end
  
  before_filter :set_title
  private
    def set_title
      @title = "Blog"
      @body = "Development, programming, etc."
    end
end
