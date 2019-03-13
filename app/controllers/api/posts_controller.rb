class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render "index.json.jbuilder"
  end

  def show

  end

  def create
    @post = Post.new(
      post_title: "Post Title Hardcoded",
      post_content: "Post Content Hardcoded",
      post_status: true,
      comment_status: true
    )
    @post.save
    render "show.json.jbuilder"
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
