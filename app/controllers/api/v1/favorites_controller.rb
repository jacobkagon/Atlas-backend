class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def show
    @favorite = Favorite.find(params[:id])
    render json: @favorite
  end

  def create
    @favorite = Favorite.new(favorite_params)
    # if Favorite.find_by(country_id: params[:country:id])
    #   render json: { error: 'failed to create favorite' }, status: :not_acceptable
    # else
      @favorite.save
      render json: @favorite
    # end
   

  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :country_id)
  end
end
