class SessionsController < ApplicationController
 def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to basic_path, notice: 'Login successful'
    else
      flash.now[:alert] = 'Email or password is incorrect'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end
end
