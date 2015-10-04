class UsersController < ApplicationController
  def index
    @homeroom = Homeroom.find(params[:homeroom_id])
    @users = User.where(homeroom_id: @homeroom.id)
    render json: @users
  end

  def show
    @user = User.find(session[:id])
    render json: @user
  end

  def new
    @user = User.new
    render json: @user
  end

  def create
    #@homeroom = Homeroom.find_by(id: params[:homeroom_id])
    @user = User.create(email: params[:email], first_name: params[:first_name], last_initial: params[:last_initial], type: params[:type], password_digest: params[:password_digest], num_boxtops: 0, amt_donated: 0.00, homeroom_id: params[:homeroom_id])
    if @user.save
      session[:id] = @user.id
      redirect_to homeroom_user_path
    else
      @signup_fail = true
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.num_boxtops += 1
    @user.amt_donated += 0.10
    render json: @user
  end
end
