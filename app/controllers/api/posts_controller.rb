class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render "index.json.jbuilder"
  end

  def show

  end

  def create

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
