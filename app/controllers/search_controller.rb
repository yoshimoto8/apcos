class SearchController < ApplicationController

  def cosmetic
    if params[:keyword].present?
      @cosmetic_item = Finder.fetch_cosmetic(params[:keyword])
      binding.pry
    end
  end

  def review
  end
end
