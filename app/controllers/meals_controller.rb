class MealsController < ApplicationController


  def index
    policy_scope @meals = Meal.all
  end

  def show
    authorize @meal = Meal.find(params[:id])
  end

  def new
    authorize @meal = Meal.new
  end

  def create
    authorize @meal = Meal.new(meal_params)
    @meal.user = current_user

    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end


private

  def meal_params
    params.require(:meal).permit(:title, :description, :house_rules, :price, :capacity, :address, :datetime, :user_id, images: [])
  end

end
