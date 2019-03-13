class Api::PostsController < ApplicationController
  def index
    @posts = Post.order("id ASC").all
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
      render json: {message: 'Post created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def new
    # add later
  end

  def edit
    # add later
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(
      name: params[:name]
    )
    if @post.save
      render json: {message: 'Post updated successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      render json: {message: 'Post destroyed successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
