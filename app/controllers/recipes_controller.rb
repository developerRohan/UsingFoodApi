class RecipesController < ApplicationController
  def index
  	params[:search] ||= 'milk';
  	@recipes = Recipe.for(params[:search]);

  end
end
