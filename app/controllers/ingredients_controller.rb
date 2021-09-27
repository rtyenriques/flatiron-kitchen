class IngredientsController < ApplicationController
    before_action :set_ingredients, only: [:create, :show, :edit, :update]

    def new
        @ingredient = Ingredient.new

    end

    def create
      
      @ingredient = Ingredient.new(ingredients_params)
      if @ingredient.save
        redirect_to @ingredient
      else
        render :new
      end
    end

    def show

    end

    def edit

    end

    def update
        if @ingredient.update(ingredients_params)
            redirect_to @ingredient
          else
            render :edit 
          end

    end

    private

    def set_ingredients
        @ingredient = Ingredient.find_by_id(params[:id])

    end 

    def ingredients_params
        params.require(:ingredient).permit(:name)


    end
end
