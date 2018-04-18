class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @codes = Code.search('').paginate(page: params[:page], per_page: 50)
    else
      @codes = Code.search(params[:q]).paginate(page: params[:page], per_page: 50)
    end

    respond_to do |format|
      format.html
      format.json { render json: { codes: @codes.map{|x| x._source}.uniq{|x| x[:code_id]}, total: @codes.total_entries } }

    end

  end

end
