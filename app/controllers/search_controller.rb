class SearchController < ApplicationController

  def index
    render locals:{facade: StationSearchResultFacade.new(params[:q], 10, 'public', 6, 'ELEC,LPG')}
  end

end
