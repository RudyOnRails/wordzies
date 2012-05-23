class PagesController < ApplicationController

  def landing
    if logged_in
      redirect_to :words
    else
      render :layout => 'landing'
    end
  end

  def dashboard
    if logged_in
      @all_wordzies = @current_user.words.find(:all, :order => "created_at ASC")
    end
  
  end

end