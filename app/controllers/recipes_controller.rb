class RecipesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'chicken'
  	@recipes = Recipe.fxn(@search_term)
  end
end
