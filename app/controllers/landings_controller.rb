class LandingsController < ApplicationController
  def annie1
    if current_user
      redirect_to :words
    else
      render :layout => 'landings/annie1_layout'
    end
  end

end
