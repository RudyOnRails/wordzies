class WordsController < ApplicationController
  
  def index
    if current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      @words = @current_user.words.find(:all, :order => "created_at DESC", :limit => 5)
    else
    end
    @suggested_words = Wordnik.words.get_random_words(:hasDictionaryDef => 'true', :sortBy => 'alpha', :sortOrder => 'asc', :limit => 5)
  end
  
  def search
    q = params[:q]
    @the_searched_word = Wordnik.words.search_words_new(q, :caseSensitive => 'true', :skip => 0, :limit => 10)
  end
  
  def show
    @the_word = params[:word]
    @wn_word_id = Wordnik.word.get_word(@the_word)['id']
    @wn_definitions = Wordnik.word.get_definitions(@the_word, :limit => 5)
    @wn_example = Wordnik.word.get_top_example(@the_word)
    @wn_synonyms = Wordnik.word.get_related(@the_word, :type => 'synonym')
    @wn_pronunciation = Wordnik.word.get_audio(@the_word, :limit => 1)
    @is_word_in_database = 
    @word = Word.new
    
    @use = Use.new
    @uses = Use.all
    
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    
  end
  
  def create

    if current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      @word = Word.new(params[:word])
      @word.save
      @use = Use.new :word_id => @word.id, :user_id => @current_user.id
      @use.save
      redirect_to root_url
    else
      # flash[:notice] = "Please sign in"
      redirect_to "http://localhost:3000/auth/twitter"
    end
  end
  
end
