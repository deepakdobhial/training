class UsersController < ApplicationController

  def signup
    @user = User.new
  end

  def signin
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user.nil?
      flash[:message] = "Wrong username or password"
      redirect_to "/" 
    else
      session[:current_user_id] = @user.id
      redirect_to products_path
    end
  end

  def signout
    session.delete(:current_user_id)
    redirect_to "/"
  end
  
  def create 
    @user = User.new(user_params)
    if @user.save
      flash[:message] = "Register Successfully"
      redirect_to "/"
    else
      render :signup, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :date_of_birth, :address, :terms_of_services)
  end

end
