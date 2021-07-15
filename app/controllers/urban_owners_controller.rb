class UrbanOwnersController < ApplicationController
  def new
    @urbano = Urbano.find(params[:urbano_id])
    @owner = UrbanOwner.new
  end

  def create

      @owner = UrbanOwner.new(owner_params)
    # we need `urbano_id` to associate owner with corresponding urbano
    @urbano = Urbano.find(params[:urbano_id ])
    @owner.urbano = @urbano
    @owner.save
    redirect_to urbano_path(@urbano)
  end

   def destroy
    @owner = UrbanOwner.find(params[:id])
    @owner.destroy
    redirect_to urbano_path(@owner.urbano)
  end

  private

  def owner_params
    params.require(:urban_owner).permit(:fecha_oc, :fecha_nac, :p_nombre, :s_nombre, :p_apellido, :s_apellido, :c_apellido, :nombre_u, :organizacion, :cedula, :estado_c, :sexo, :telefono, :apartado, :ocupacion, :dirreccion)
  end

end
