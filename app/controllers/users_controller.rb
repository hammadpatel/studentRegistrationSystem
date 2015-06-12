class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  @user = User.new(user_params)
  if @user.save
    redirect_to root_url, :notice => 'Signed Up'
  else
    render :new
  end
 end

  private 
  	def user_params
  		params.require(:user).permit(:email, :password, :password_confirmation, :program_choice1, :pprogram_choice2, :first_name, :middle_name,
  			:last_name, :nic, :country, :test_center)

  		
  	end


end

