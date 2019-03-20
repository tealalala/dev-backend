class Api::PostUserVotesController < ApplicationController
  def index
    @post_user_votes = PostUserVote.order("id ASC").all
    render "index.json.jbuilder"
  end

  def create
    @post_user_vote = PostUserVote.new(
      post_id: params[:post_id],
      user_id: params[:user_id],
      upvote: true
    )
    if @post_user_vote.save
      render json: {message: 'Post User Vote created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
