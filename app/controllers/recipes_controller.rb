class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

  end

  def search
    byebug
    @ing_count = Recipe.all.map do |recipe|
      recipe.ingredients.count
      end

    render :index
  end


  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end


  def create
    @recipe = Recipe.create(recipe_params)
     redirect_to recipe_path(@recipe)
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

    def recipe_params
      params.require(:recipe).permit(:name, :cuisine, :user_id)
    end
end
