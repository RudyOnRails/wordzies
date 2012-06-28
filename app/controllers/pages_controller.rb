class PagesController < ApplicationController

  @last_word = Word.all

  def landing
    if logged_in
      redirect_to :words
    else
      render :layout => 'falling_words'
    end
  end

  def dashboard
    if logged_in
      @all_wordzies = @current_user.words.find(:all, :order => "created_at ASC")
    end
  
  end

end