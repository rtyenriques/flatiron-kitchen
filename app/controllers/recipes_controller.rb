class RecipesController < ApplicationController
    before_action :set_recipes, only: [:create, :show, :edit]

    def new
        @recipe = Recipe.new

    end

    def create
        @recipe = Recipe.new(recipes_params)
        if @recipe.save
            redirect_to @recipe
        else
            render :new
        end

    end

    def show

    end

    def edit
       
    end

    def update
        if @recipe = Recipe.update(recipes_params)
        
            redirect_to @recipe
        else
            render :edit
        end



    end

    private

    def set_recipes
        @recipe = Recipe.find_by_id(params[:id])

    end

    def recipes_params
        params.require(:recipe).permit(:name, ingredient_ids: [])
    end
end
