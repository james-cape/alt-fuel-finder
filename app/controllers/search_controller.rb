class SearchController < ApplicationController
  def index
    render locals: {
      facade: StationSearchResultsFacade.new(params[:q], 15, 6, 'ELEC,LPG', 'public')
    }
  end
end
