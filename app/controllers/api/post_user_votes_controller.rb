class Api::PostUserVotesController < ApplicationController
  def index
    @post_user_votes = PostUserVote.order("id ASC").all
    render "index.json.jbuilder"
  end
end
