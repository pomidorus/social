class BenefitsController < ApplicationController
  def index
    @benefits = Benefit.all
  end

  def show
    @benefit = Benefit.find(params[:id])
  end

  def edit
  end

  def delete
  end

  def update
  end

  def create
    @benefit = Benefit.new benefit_params
    @benefit.save!
  end

  def new
    @benefit = Benefit.new
  end

  private
  def benefit_params
    params.require(:benefit).permit(:title, :description, :benefit_category_id)
  end

end
