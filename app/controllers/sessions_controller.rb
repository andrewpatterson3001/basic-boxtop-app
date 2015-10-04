class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.password = params[:password]
      @homeroom = Homeroom.find_by(homeroom_id: @user.homeroom_id)
      session[:id] = @user.id
      redirect_to homeroom_user_path
    else
      @login_fail = true
      redirect_to :back, status: 404
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_url
  end
end
