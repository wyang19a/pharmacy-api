# frozen_string_literal: true

class IngredientsController < OpenReadController
  before_action :set_ingredient, only: %i[update destroy]

  # GET /ingredients
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  # GET /ingredients/1
  def show
    render json: Ingredient.find(params[:id])
  end

  # POST /ingredients
  def create
    @ingredient = current_user.ingredients.build(ingredient_params)

    if @ingredient.save
      render json: @ingredient, status: :created, location: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingredients/1
  def update
    if @ingredient.update(ingredient_params)
      render json: @ingredient
    else
      render json: @ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingredients/1
  def destroy
    @ingredient.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ingredient
    @ingredient = current_user.ingredients.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ingredient_params
    params.require(:ingredient).permit(:name, :unit, :form)
  end
end
