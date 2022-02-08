class UrbanosController < ApplicationController
  before_action :set_urbano, only: %i[ show edit update destroy report ]
  layout false, only: [:report]

  # GET /urbanos or /urbanos.json
  def index
    @urbanos = Urbano.search(params[:search])
  end

  # GET /urbanos/1 or /urbanos/1.json
  def show
     @marker = {lng: @urbano.longitude, lat: @urbano.latitude}
  end

  # GET /urbanos/new
  def new
    @urbano = Urbano.new
  end
  def report
    @c =  @urbano.urban_neighbors[0]
    @c1 =  @urbano.urban_neighbors[1]
    @c2 =  @urbano.urban_neighbors[2]
    @c3 =  @urbano.urban_neighbors[3]
    @c4 =  @urbano.urban_neighbors[4]
    @c5 =  @urbano.urban_neighbors[5]
    @own = @urbano.urban_owners[0]
    @own1 = @urbano.urban_owners[1]
    @own2 = @urbano.urban_owners[2]

  end

  # GET /urbanos/1/edit
  def edit
  end

  # POST /urbanos or /urbanos.json
  def create
    @urbano = Urbano.new(urbano_params)
    @urbano =  current_user.urbanos.new(urbano_params)
    respond_to do |format|
      if @urbano.save
        format.html { redirect_to @urbano, notice: "Urbano was successfully created." }
        format.json { render :show, status: :created, location: @urbano }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @urbano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urbanos/1 or /urbanos/1.json
  def update
    respond_to do |format|
      if @urbano.update(urbano_params)
        format.html { redirect_to @urbano, notice: "Urbano was successfully updated." }
        format.json { render :show, status: :ok, location: @urbano }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @urbano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urbanos/1 or /urbanos/1.json
  def destroy
    @urbano.destroy
    respond_to do |format|
      format.html { redirect_to urbanos_url, notice: "Urbano was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urbano
      @urbano = Urbano.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def urbano_params
      params.require(:urbano).permit(:id_catastral, :provincia, :distrito, :corregimiento, :ejido, :lugar, :calle, :localizacion, :n_mapa_catastral, :n_ortofoto, :n_predio, :s_predial, :nombre_predio, :titulo_propiedad, :ph, :finca_ph, :concesion_admin, :litigio, :tipo_de_litigio, :finca, :folio, :docum, :operacion, :tomo, :rollo, :registro, :asiento, :fecha_del_titulo, :fecha_de_registro, :superficie_inscrita, :finca_madre, :otorgado, :tipo_de_titulo, :n_resolucion, :fecha_resolucion, :tipo_resolucion, :n_de_orden, :n_plano, :globo, :plano_de_referencia, :sup_reportada, :tipo_de_persona, :sexo, :cedula, :n_dependientes, :nacionalidad, :ocupacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :nombre_casada, :nombre_usual, :apellido_usual, :organizacion, :fecha_de_nacimiento, :telefono, :dirreccion, :estado_civil, :fecha_de_ocupacion, :apartado, :observaciones_ficha, :empadronador_nombre, :empadronador_firma, :inspector_nombre, :inspector_firma, :supervisor_nombre, :supervisor_firma, :captador_nombre, :captador_firma, :empresa, :metodologia, :fecha_levantamiento, :hora_levantamiento, :equipo, :verficado, :firma_propietario, :cedula_propetario, :funcionario_firma, :sustanciador_firma, :inclinacion, :aprovechamiento, :vivienda_t, :comercial_t, :industrial_t, :turístico_t, :educacional_t, :uso_publico_t, :comunal_t, :agricola_t, :ganadero_t, :otro_t, :vias_acesso, :n_manzana, :m_uso, :cera, :acueductos, :tuberia_gas, :m_cordon, :alcantarillado, :telefono_m, :m_luz, :tv, :senal_celular, :sena_satelital, :m_otro, :material_calle, :uso_recidencial, :uso_tuiristico, :uso_industrial, :uso_educacioal, :uso_comercial, :uso_recreacional, :tipo_resindencial, :paredes, :estructura_techo, :cubierta_techo, :piso_cemento, :piso_baldosa, :piso_granito, :piso_ceramica, :piso_madera, :piso_tierra, :piso_otro, :solo_agua, :n_diseminados, :n_servicio2, :n_servicio3, :electricidad, :m_otro2, :address, :latitude, :longitude, :user_id)
    end
end
