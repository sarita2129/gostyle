# require 'pry'
class WorksController < ApplicationController
  # before_action :fetch_access,:only => [:show]
  # before_action :check_for_usertype,:only => [:show]

  def new
    # session[:test] = "testing"
    # @test = session[:test]
    @work = Work.new
  end
  def index
    @works = Work.where(:user_id => @current_user.id)
  end
  def show
    @work = Work.find params[:id]
    session[:work] = @work
    @user = User.where(:id => @work.user_id).first
    # binding.pry
  end
  def edit
    @work = Work.find params[:id]
  end
  def create
    work = Work.new work_params
    work.user_id = @current_user.id

    if work.save
      redirect_to works_path
    else
      flash[:error_message] = "Error Unable to save your data."
    end
  end

  def update
    work = Work.find params[:id]
    work.update work_params
    redirect_to work
  end
  def destroy
    work = Work.find params[:id]
    work.destroy
    redirect_to works_path
  end
  private
  def work_params
    params.require(:work).permit(:user_id,:image,:title,:description,:visit)
  end
  # private
  # def fetch_access
  #   if @current_user
  #
  #   else condition
  #   end
  #
  # end
end
