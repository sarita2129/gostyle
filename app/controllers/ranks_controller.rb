class RanksController < ApplicationController
  # before_action :fetch_work

  def new
    @rank = Rank.new
  end
  def create
    rank = Rank.new rank_params
    # work = Work.find params[:id]
    rank.user_id = @current_user.id
    rank.work_id = @work_id
    rank.save
  end

  private
  def rank_params
    params.require(:rank).permit(:user_id,:work_id,:ranking)
  end
  private
  def fetch_work
    @work_id = session[:work]["id"]
  end
end
