class CodesController < ApplicationController
def index
  @codes = Code.all
end

def show
  # @codes = Code.find()
  # @codes = Code.search params[:q]
  @codes = Code.find(params[:q])
end


end

private
  def codes_params
    params.require(:code).permit :desc, :code_id
  end
