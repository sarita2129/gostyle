class PagesController < ApplicationController
  def home
    @works = Work.all
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
  # get '/pry' do
  # binding.pry
  # end
end
