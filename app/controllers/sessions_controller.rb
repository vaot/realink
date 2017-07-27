class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.where(email: user_params[:email]).first

    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to '/news/all'
    else
      @user = User.new
      flash[:error] = "Email or password is invalid!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
