class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render "index.json.jbuilder"
  end

  def show
    @post = Post.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @post = Post.new(
      user_id: params[:user_id],
      post_title: params[:post_title],
      post_content: params[:post_content],
      post_status: true,
      comment_status: true
    )
    if @post.save
      render "show.json.jbuilder"
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
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
