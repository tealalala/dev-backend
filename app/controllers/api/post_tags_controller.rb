class Api::PostTagsController < ApplicationController
  def index
    @post_tags = PostTag.order("id ASC").all
    render "index.json.jbuilder"
  end
end
