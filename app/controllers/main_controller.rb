class MainController < ApplicationController

  def about_me
  end

  before_filter :set_title
  private
    def set_title
      @title = "About Me"
      @body = "Development, programming and whatever"
    end
end

