class Api::UsersController < ApplicationController
  def index
    @users = User.order("id ASC").all
    render "index.json.jbuilder"
  end
  
  def profile
    @user = current_user
    render "show.json.jbuilder"
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
