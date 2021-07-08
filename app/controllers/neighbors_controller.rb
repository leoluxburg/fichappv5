class NeighborsController < ApplicationController
  def new
    @rural = Rural.find(params[:rural_id])
    @neighbor = Neighbor.new
  end

  def create

      @neighbor = Neighbor.new(neighbor_params)
    # we need `rural_id` to associate neighbor with corresponding rural
    @rural = Rural.find(params[:rural_id ])
    @neighbor.rural = @rural
    @neighbor.save
    redirect_to rural_path(@rural)
  end

   def destroy
    @neighbor = Neighbor.find(params[:id])
    @neighbor.destroy
    redirect_to rural_path(@neighbor.rural)
  end

  private

  def neighbor_params
    params.require(:neighbor).permit(:name, :id_number, :estate)
  end

end
