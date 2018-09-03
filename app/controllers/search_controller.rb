class SearchController < ApplicationController
  def cosmetic
    @item = Finder.fetch_cosmetic(params[:keyword])
  end

  def review

  end
end
