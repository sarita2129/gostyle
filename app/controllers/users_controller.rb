# require 'pry'

class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new user_params
    if @user.admin == "1"
      @user.admin = "Buyer"
    else
      @user.admin = "Seller"
    end
    # binding.pry
    if @user.save
      # session[:user_id] = @user.id
      redirect_to root_path
    end
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:admin,:name,:dob,:image,:address,:phone,:companyname,:companyaddress,:companywebsite,:companycontactinfo)
  end

end
