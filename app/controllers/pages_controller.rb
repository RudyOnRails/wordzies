class PagesController < ApplicationController

def landing
  if logged_in
    redirect_to :words
  else
    render :layout => 'landings/annie1'
  end
end

end