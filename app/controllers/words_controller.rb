class WordsController < ApplicationController
  
  def index
    @words = Word.all
    
  end
  
  def search
    q = params[:q]
    @the_searched_word = Wordnik.words.search_words_new(q, :caseSensitive => 'true', :skip => 0, :limit => 10)
  end
  
  def show
    @the_word = params[:word]
    @definitions = Wordnik.word.get_definitions(@the_word)
  end
  
end
