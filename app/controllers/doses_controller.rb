class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all.order(:name)
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
    if @dose.destroy
      redirect_to cocktail_path(@cocktail)
    else
      render cocktail_path(@cocktail)
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description, :amount)
  end
end
