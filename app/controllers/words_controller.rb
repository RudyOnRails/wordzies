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
    @wn_word_id = Wordnik.word.get_word(@the_word)['id']
    @wn_definitions = Wordnik.word.get_definitions(@the_word, :limit => 5)
    @wn_example = Wordnik.word.get_top_example(@the_word)
    @wn_synonyms = Wordnik.word.get_related(@the_word, :type => 'synonym')
    @wn_pronunciation = Wordnik.word.get_audio(@the_word, :limit => 1)
    @word = Word.new
  end
  
  def create
    @word = Word.new(params[:word])
    @word.save
    redirect_to root_url
  end
  
end
