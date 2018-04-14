class CodesController < ApplicationController
  def index
    @codes = Code.all.paginate(page: params[:page], per_page: 10)
  end

def show
  # @codes = Code.find()
  # @codes = Code.search params[:q]
  @codes = Code.find_by(params[:q])
end


end

private
  def codes_params
    params.require(:code).permit :desc, :code_id
  end
