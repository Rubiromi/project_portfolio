class StaticController < ApplicationController

  def index
    @projects = Project.all

  end

  def about

  end

end
