class RuralsController < ApplicationController
  before_action :set_rural, only: %i[ show edit update destroy report ]
  layout false, only: [:report]
  # GET /rurals or /rurals.json
  def index
    @rurals = Rural.search(params[:search])
  end

  # GET /rurals/1 or /rurals/1.json
  def show

    @marker = {lng: @rural.longitude, lat: @rural.latitude}

    puts @marker
  end

  def report
    @c =  @rural.neighbors[0]
    @c1 =  @rural.neighbors[1]
    @c2 =  @rural.neighbors[2]
    @c3 =  @rural.neighbors[3]
    @c4 =  @rural.neighbors[4]
    @c5 =  @rural.neighbors[5]
    @own = @rural.owners[0]
    @own1 = @rural.owners[1]
    @own2 = @rural.owners[2]
  end
  # GET /rurals/new
  def new
    @rural = Rural.new
  end

  # GET /rurals/1/edit
  def edit
  end

  # POST /rurals or /rurals.json
  def create
    @rural = Rural.new(rural_params)
    @rural = current_user.rurals.new(rural_params)
    respond_to do |format|
      if @rural.save
        format.html { redirect_to @rural, notice: "Ficha creada con exito." }
        format.json { render :show, status: :created, location: @rural }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rural.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rurals/1 or /rurals/1.json
  def update
    respond_to do |format|
      if @rural.update(rural_params)
        format.html { redirect_to @rural, notice: "Ficha editada con exito." }
        format.json { render :show, status: :ok, location: @rural }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rurals/1 or /rurals/1.json
  def destroy
    @rural.destroy
    respond_to do |format|
      format.html { redirect_to rurals_url, notice: "Ficha eliminada con exito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural
      @rural = Rural.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rural_params
      params.require(:rural).permit(:id_catastral, :provincia, :distrito, :corregimiento, :ejido, :lugar, :calle, :localizacion, :geo_point, :n_mapa_catastral, :n_ortofoto, :n_predio, :s_predial, :nombre_predio, :titulo_propiedad, :ph, :finca_ph, :concesion_admin, :litigio, :tipo_de_litigio, :finca, :folio, :docum, :operacion, :tomo, :rollo, :registro, :asiento, :fecha_del_titulo, :fecha_de_registro, :superficie_inscrita, :finca_madre, :otorgado, :tipo_de_titulo, :n_resolucion, :fecha_resolucion, :tipo_resolucion, :n_de_orden, :n_plano, :globo, :plano_de_referencia, :sup_reportada, :tipo_de_persona, :sexo, :cedula, :n_dependientes, :nacionalidad, :ocupacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :nombre_casada, :nombre_usual, :apellido_usual, :organizacion, :fecha_de_nacimiento, :telefono, :dirreccion, :estado_civil, :fecha_de_ocupacion, :apartado, :topografia, :pendiente_ap, :agua, :luz, :x_none, :tipo_de_construccion, :del_propietario, :de_otro, :uso_de_tierra, :cercas_existentes, :hidrografia, :vias_de_acceso, :servidumbre_de_acceso, :servidumbre, :observaciones_ficha, :empadronador_nombre, :empadronador_firma, :inspector_nombre, :inspector_firma, :supervisor_nombre, :supervisor_firma, :captador_nombre, :captador_firma, :empresa, :metodologia, :fecha_levantamiento, :hora_levantamiento, :equipo, :verficado, :firma_propietario, :cedula_propetario, :funcionario_firma, :sustanciador_firma, :user_id, :longitud, :latitud, :address)
    end
end
