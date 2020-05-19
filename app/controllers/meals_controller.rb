class MealsController < ApplicationController

  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end


  def new
    @meal = Meal.new
  end



  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end




private

  def meal_params
    params.require(:meal).permit(:title, :description, :house_rules, :price, :capacity, :address, :datetime)
  end

end
