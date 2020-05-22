class UsersController < ApplicationController

  def show
    authorize @user = User.find(params[:id])
  end


end
