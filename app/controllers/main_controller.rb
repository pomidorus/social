class MainController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def how_this_works
  end

  def search_by_category
    @profile = Profile.find(params[:id])
  end
end
