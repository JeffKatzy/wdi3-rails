class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(params[:ingredient])
  end

  def show

  end

  def index
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update_attributes(params[:ingredient])
    redirect_to @ingredient
  end

  def destroy
  end
end
