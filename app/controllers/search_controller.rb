class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @codes = []
    else
      @codes = Code.search params[:q]
    end

    respond_to do |format|
      format.html
      format.json { render json: { codes: @codes.records } }
    end

  end

end
