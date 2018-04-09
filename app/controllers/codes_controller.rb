class CodesController < ApplicationController
def index
  @codes = Code.all
end

def show
  @codes = Code.all
  Code.find_by_id(params[:code_id])
end


end

private
  def codes_params
    params.require(:code).permit :desc, :code_id
  end
