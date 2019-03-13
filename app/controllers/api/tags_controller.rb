class Api::TagsController < ApplicationController
  def index
    @tags = Tag.order("name ASC").all
    render "index.json.jbuilder"
  end

  def show
    @tag = Tag.find_by(name: params[:name])
    render 'show.json.jbuilder'
  end

  # for users - above methods are for users only
  # for admins (future) - need separate controller that is admin only to create these RESTful actions:
    # create, new, edit, update, destroy

  # below CREATE action added her temporarily until figure out how to create AdminController-CreateTags
  def create
    @tag = Tag.new(
      name: params[:name],
    )
    if @tag.save
      render "show.json.jbuilder"
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
