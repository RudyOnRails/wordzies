class WordsController < ApplicationController
  
  def index
    @words = Word.all
    @definitions = Wordnik.word.get_definitions("alchemy")
    
  end
  
end
