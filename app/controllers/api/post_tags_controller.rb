class Api::PostTagsController < ApplicationController
  def index
    @post_tags = PostTag.order("id ASC").all
    render "index.json.jbuilder"
  end

  def create
    @post_tag = PostTag.new(
      post_id: params[:post_id],
      tag_id: params[:post_id]
    )
    if @post_tag.save
      render json: {message: 'Post Tag created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
