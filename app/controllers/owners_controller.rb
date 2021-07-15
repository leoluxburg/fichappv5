class OwnersController < ApplicationController
   def new
    # we need @rural in our `simple_form_for`
    @rural = Rural.find(params[:rural_id])
    @owner = Owner.new
  end

  def create

    @owner = Owner.new(owner_params)
    # we need `rural_id` to associate owner with corresponding rural
    @rural = Rural.find(params[:rural_id ])
    @owner.rural = @rural
    @owner.save
    redirect_to rural_path(@rural)
  end

   def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    redirect_to rural_path(@owner.rural)
  end

  private

  def owner_params
    params.require(:owner).permit( :fecha_oc, :fecha_nac, :p_nombre, :s_nombre, :p_apellido, :s_apellido, :c_apellido, :nombre_u, :organizacion, :cedula, :estado_c, :telefono, :apartado, :ocupacion, :dirreccion, :sexo)
  end

end
