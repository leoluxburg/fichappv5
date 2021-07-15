class UrbanNeighborsController < ApplicationController
   def new
    @urbano = Urbano.find(params[:urbano_id])
    @neighbor = UrbanNeighbor.new
  end

  def create

      @neighbor = UrbanNeighbor.new(neighbor_params)
    # we need `urbano_id` to associate neighbor with corresponding urbano
    @urbano = Urbano.find(params[:urbano_id ])
    @neighbor.urbano = @urbano
    @neighbor.save
    redirect_to urbano_path(@urbano)
  end

   def destroy
    @neighbor = UrbanNeighbor.find(params[:id])
    @neighbor.destroy
    redirect_to urbano_path(@neighbor.urbano)
  end

  private

  def neighbor_params
    params.require(:urban_neighbor).permit(:name, :id_number, :estate)
  end

end
