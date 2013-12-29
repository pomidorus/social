class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
  end

  def delete
  end

  def create
    @profile = Profile.new profile_params
    benefits = []
    params[:profile]['benefit_ids'].each do |benefit|
      benefits << Benefit.find(benefit) unless benefit.blank?
    end
    @profile.benefits = benefits
    @profile.save!
  end

  def update
  end

  def new
    @profile = Profile.new
  end

  private
  def profile_params
    params.require(:profile).permit(:title, :benefit_ids)
  end
end
