class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
  end

  def edit
  end

  def delete
  end

  def create
    @profile = Profile.new profile_params
    @profile.save!
  end

  def update
  end

  def new
    @profile = Profile.new
  end

  private
  def profile_params
    params.require(:profile).permit(:title)
  end
end
