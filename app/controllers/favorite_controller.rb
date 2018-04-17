class FavoriteController < ApplicationController
  def create
    @code =  Code.find_by(code_id: fav_params[:code_id])
    @favorite = Favorite.new(user_id: fav_params[:user_id], code: @code)

    if @favorite.save
      render json: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end

  end

  def show
    @favorites = Favorite.where(user_id: params[:user_id])
    p codes_array = []
    @favorites.each do |favorite|
      code = Code.find(favorite[:code_id])
      p codes_array << { "code_id": code[:code_id], "desc": code[:desc]}
    end
    render json: codes_array
  end

  def destroy
    @code =  Code.find_by(code_id: fav_params[:code_id])
    @favorite = Favorite.find_by(code: @code, user_id: fav_params[:user_id])
    @favorite.destroy
  end

  private
  def fav_params
    params.require(:favorite).permit(:code_id, :user_id)
  end
end
