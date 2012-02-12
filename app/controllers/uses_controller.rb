class UsesController < ApplicationController
  def create
    @use = Use.new(params[:example])
    @use.save
    
    redirect_to root_url
  end
end
