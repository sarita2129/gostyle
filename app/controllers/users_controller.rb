require 'pry'

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
    if params[:image].present?
      req = Cloudinary::Uploader.upload(params[:image])
      @user.image = req["public_id"]
    end
    # binding.pry
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      if params[:password] != params[:password_confirmation]
        flash[:error_message] = "Password and confirm password do not match"
      end
      render :new
    end
    # binding.pry
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:admin,:name,:dob,:image,:address,:phone,:companyname,:companyaddress,:companywebsite,:companycontactinfo)
  end

end
