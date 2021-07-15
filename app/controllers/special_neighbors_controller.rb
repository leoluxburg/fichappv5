class SpecialNeighborsController < ApplicationController
  def new
    @especial = Especial.find(params[:especial_id])
    @neighbor = SpecialNeighbor.new
  end

  def create
    @neighbor = SpecialNeighbor.new(neighbor_params)
    # we need `especial_id` to associate neighbor with corresponding especial
    @especial = Especial.find(params[:especial_id ])
    @neighbor.especial = @especial
    @neighbor.save
    redirect_to especial_path(@especial)
  end

   def destroy
    @neighbor = EspecialNeighbor.find(params[:id])
    @neighbor.destroy
    redirect_to especial_path(@neighbor.especial)
  end

  private

  def neighbor_params
    params.require(:special_neighbor).permit(:name, :id_number, :estate, :cardinalidad)
  end

end

