class MainController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def how_this_works

  end
end
