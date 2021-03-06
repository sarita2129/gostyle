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
    @ratanlytics = Ratework.select("ranking").where(:work_id => params[:id]).group("ranking").count(:ranking)
    @rating = Ratework.where(:work_id => params[:id])

    # raise 'hell'
    @sum = 0
    @rating.each do |rating|
      @sum += rating.ranking
    end
    if @rating.any?
      @avgrating = (@sum / @rating.size).floor
    else
      @avgrating = 0
    end
    # raise 'hell'
    #@avgrating = 3#Ratework.group(:work_id).pluck("work_id, AVG(Round(ranking))").having(":work_id => #{params[:id]}")#pluck("AVG(Round(ranking))")
    # binding.pry
  end
  def edit
    @work = Work.find params[:id]
  end
  def create
    work = Work.new work_params
    work.user_id = @current_user.id
    if params[:image].present?
      req = Cloudinary::Uploader.upload(params[:image])
      work.image = req["public_id"]
    end
    if work.save
      redirect_to works_path
    else
      flash[:error_message] = "Error Unable to save your data."
    end
  end

  def update
    work = Work.find params[:id]
    if params[:image].present?
      req = Cloudinary::Uploader.upload(params[:image])
      work.image = req["public_id"]
    end
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
