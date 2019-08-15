class DosesController < ApplicationController
  before_action :doses, only: [:new, :edit, :destroy]
  def new
    @dose = Dose.new
  end

  def edit
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:dose).permit(:description)
  end
end
