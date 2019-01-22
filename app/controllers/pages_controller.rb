class PagesController < ApplicationController
  def home
    @works = Work.all
    @rank = Rank.new
  end
  def search
    # binding.pry
      @works = Work.all
    if params[:searchtext] != ""
      @works = Work.search_full_text(params[:searchtext])
    end
    render :home
  end
  def about
    render :about
  end
  def contact
    render :contact
  end
  def error
    @errormessage = params[:msg]
    render :errorpage
  end
  # get '/pry' do
  # binding.pry
  # end
end
