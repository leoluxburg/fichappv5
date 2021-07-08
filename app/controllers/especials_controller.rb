class EspecialsController < ApplicationController
  before_action :set_especial, only: %i[ show edit update destroy report ]
  layout false, only: [:report]
  # GET /especials or /especials.json
  def index
    @especials = Especial.all
  end

  # GET /especials/1 or /especials/1.json
  def show
     @marker = {lng: @especial.longitude, lat: @especial.latitude}
  end

  # GET /especials/new
  def new
    @especial = Especial.new
  end

  # GET /especials/1/edit
  def edit
  end

  def report

  end
  # POST /especials or /especials.json
  def create
    @especial = Especial.new(especial_params)

    respond_to do |format|
      if @especial.save
        format.html { redirect_to @especial, notice: "Especial was successfully created." }
        format.json { render :show, status: :created, location: @especial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @especial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especials/1 or /especials/1.json
  def update
    respond_to do |format|
      if @especial.update(especial_params)
        format.html { redirect_to @especial, notice: "Especial was successfully updated." }
        format.json { render :show, status: :ok, location: @especial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @especial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especials/1 or /especials/1.json
  def destroy
    @especial.destroy
    respond_to do |format|
      format.html { redirect_to especials_url, notice: "Especial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especial
      @especial = Especial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def especial_params
      params.require(:especial).permit(:id_catastral, :provincia, :distrito, :corregimiento, :ejido, :lugar, :calle, :localizacion, :geo_point, :n_mapa_catastral, :n_ortofoto, :n_predio, :s_predial, :nombre_predio, :titulo_propiedad, :ph, :finca_ph, :concesion_admin, :litigio, :tipo_de_litigio, :finca, :folio, :docum, :operacion, :tomo, :rollo, :registro, :asiento, :fecha_del_titulo, :fecha_de_registro, :superficie_inscrita, :finca_madre, :otorgado, :tipo_de_titulo, :n_resolucion, :fecha_resolucion, :tipo_resolucion, :n_de_orden, :n_plano, :globo, :plano_de_referencia, :sup_reportada, :tipo_de_persona, :sexo, :cedula, :n_dependientes, :nacionalidad, :ocupacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :nombre_casada, :nombre_usual, :apellido_usual, :organizacion, :fecha_de_nacimiento, :telefono, :dirreccion, :estado_civil, :fecha_de_ocupacion, :apartado, :observaciones_ficha, :empadronador_nombre, :empadronador_firma, :inspector_nombre, :inspector_firma, :supervisor_nombre, :supervisor_firma, :captador_nombre, :captador_firma, :empresa, :metodologia, :fecha_levantamiento, :hora_levantamiento, :equipo, :verficado, :firma_propietario, :cedula_propetario, :funcionario_firma, :sustanciador_firma, :topografia, :pendiente_ap, :agua, :luz, :x_none, :tipo_de_construccion, :uso_de_tierra, :cercas_existentes, :hidrigrafia, :vias_de_acceso, :servidumbre_de_acceso, :servidumbre, :n_manzanas, :acera, :acueductos, :tuberia_gas, :m_cordon, :alcantarillado, :telefono_m, :m_luz, :tv, :senal_celular, :sena_satelital, :m_otro, :uso_recidencial, :uso_tuiristico, :uso_comercial, :uso_industrial, :uso_educacioal, :uso_recreacional, :tipo_resindencial, :paredes, :estructura_techo, :cubierta_techo, :piso_cemento, :piso_baldosa, :piso_granito, :piso_ceramica, :piso_madera, :piso_tierra, :piso_otro, :solo_agua, :n_diseminados, :n_servicio2, :n_servicio3, :electricidad, :m_otro2, :address, :latitude, :longitude)
    end
end
