class RateworksController < ApplicationController
  def new
    @rate = Ratework.new
  end
  
  def create
    rate = Ratework.new rateworks_params
    # work = Work.find params[:id]
    rate.user_id = @current_user.id
    rate.work_id = session[:work]["id"]
    # rank.ranking = params[:ranking]

    # binding.pry
    rate.save
  end
  private
  def rateworks_params
    # params.permit(:user_id,:work_id,:ranking)
    params.require(:ratework).permit(:user_id,:work_id,:ranking)

  end
end
