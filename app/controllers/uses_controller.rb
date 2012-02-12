class UsesController < ApplicationController
  
  def index
    @uses = Use.all
  end
  
  def create
    @use = Use.new(params[:use])
    @use.save
    # render :controller => "words", :action => "show"
    redirect_to root_url
  end
end
