class PostsController < ApplicationController
  def index
     @tasks = Task.all
  end
  
  def new
     @task = Task.new
  end
  
  def create
  end
  
  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
