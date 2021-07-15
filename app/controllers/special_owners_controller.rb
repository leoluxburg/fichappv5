class SpecialOwnersController < ApplicationController
  def new
    @especial = Especial.find(params[:especial_id])
    @owner = SpecialOwner.new
  end

  def create
    @owner = SpecialOwner.new(owner_params)
    # we need `especial_id` to associate owner with corresponding especial
    @especial = Especial.find(params[:especial_id ])
    @owner.especial = @especial
    @owner.save
    redirect_to especial_path(@especial)
  end

   def destroy
    @owner = EspecialOwner.find(params[:id])
    @owner.destroy
    redirect_to especial_path(@owner.especial)
  end

  private

  def owner_params
    params.require(:special_owner).permit(:fecha_oc, :fecha_nac, :p_nombre, :s_nombre, :p_apellido, :s_apellido, :c_apellido, :nombre_u, :organizacion, :cedula, :estado_c, :sexo, :telefono, :apartado, :ocupacion, :dirreccion)
  end

end
