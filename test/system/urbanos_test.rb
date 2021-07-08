require "application_system_test_case"

class UrbanosTest < ApplicationSystemTestCase
  setup do
    @urbano = urbanos(:one)
  end

  test "visiting the index" do
    visit urbanos_url
    assert_selector "h1", text: "Urbanos"
  end

  test "creating a Urbano" do
    visit urbanos_url
    click_on "New Urbano"

    check "Acueductos" if @urbano.acueductos
    fill_in "Address", with: @urbano.address
    check "Agricola t" if @urbano.agricola_t
    check "Alcantarillado" if @urbano.alcantarillado
    fill_in "Apartado", with: @urbano.apartado
    fill_in "Apellido usual", with: @urbano.apellido_usual
    fill_in "Aprovechamiento", with: @urbano.aprovechamiento
    fill_in "Asiento", with: @urbano.asiento
    fill_in "Calle", with: @urbano.calle
    fill_in "Captador firma", with: @urbano.captador_firma
    fill_in "Captador nombre", with: @urbano.captador_nombre
    fill_in "Cedula", with: @urbano.cedula
    fill_in "Cedula propetario", with: @urbano.cedula_propetario
    check "Cera" if @urbano.cera
    check "Comercial t" if @urbano.comercial_t
    check "Comunal t" if @urbano.comunal_t
    fill_in "Concesion admin", with: @urbano.concesion_admin
    fill_in "Corregimiento", with: @urbano.corregimiento
    fill_in "Cubierta techo", with: @urbano.cubierta_techo
    fill_in "Dirreccion", with: @urbano.dirreccion
    fill_in "Distrito", with: @urbano.distrito
    fill_in "Docum", with: @urbano.docum
    check "Educacional t" if @urbano.educacional_t
    fill_in "Ejido", with: @urbano.ejido
    fill_in "Electricidad", with: @urbano.electricidad
    fill_in "Empadronador firma", with: @urbano.empadronador_firma
    fill_in "Empadronador nombre", with: @urbano.empadronador_nombre
    fill_in "Empresa", with: @urbano.empresa
    fill_in "Equipo", with: @urbano.equipo
    fill_in "Estado civil", with: @urbano.estado_civil
    fill_in "Estructura techo", with: @urbano.estructura_techo
    fill_in "Fecha de nacimiento", with: @urbano.fecha_de_nacimiento
    fill_in "Fecha de ocupacion", with: @urbano.fecha_de_ocupacion
    fill_in "Fecha de registro", with: @urbano.fecha_de_registro
    fill_in "Fecha del titulo", with: @urbano.fecha_del_titulo
    fill_in "Fecha levantamiento", with: @urbano.fecha_levantamiento
    fill_in "Fecha resolucion", with: @urbano.fecha_resolucion
    fill_in "Finca", with: @urbano.finca
    fill_in "Finca madre", with: @urbano.finca_madre
    fill_in "Finca ph", with: @urbano.finca_ph
    fill_in "Firma propietario", with: @urbano.firma_propietario
    fill_in "Folio", with: @urbano.folio
    fill_in "Funcionario firma", with: @urbano.funcionario_firma
    check "Ganadero t" if @urbano.ganadero_t
    fill_in "Globo", with: @urbano.globo
    fill_in "Hora levantamiento", with: @urbano.hora_levantamiento
    fill_in "Id catastral", with: @urbano.id_catastral
    fill_in "Inclinacion", with: @urbano.inclinacion
    check "Industrial t" if @urbano.industrial_t
    fill_in "Inspector firma", with: @urbano.inspector_firma
    fill_in "Inspector nombre", with: @urbano.inspector_nombre
    fill_in "Latitude", with: @urbano.latitude
    fill_in "Litigio", with: @urbano.litigio
    fill_in "Localizacion", with: @urbano.localizacion
    fill_in "Longitude", with: @urbano.longitude
    fill_in "Lugar", with: @urbano.lugar
    check "M cordon" if @urbano.m_cordon
    check "M luz" if @urbano.m_luz
    fill_in "M otro", with: @urbano.m_otro
    fill_in "M otro2", with: @urbano.m_otro2
    fill_in "M uso", with: @urbano.m_uso
    fill_in "Material calle", with: @urbano.material_calle
    fill_in "Metodologia", with: @urbano.metodologia
    fill_in "N de orden", with: @urbano.n_de_orden
    fill_in "N dependientes", with: @urbano.n_dependientes
    fill_in "N diseminados", with: @urbano.n_diseminados
    fill_in "N manzana", with: @urbano.n_manzana
    fill_in "N mapa catastral", with: @urbano.n_mapa_catastral
    fill_in "N ortofoto", with: @urbano.n_ortofoto
    fill_in "N plano", with: @urbano.n_plano
    fill_in "N predio", with: @urbano.n_predio
    fill_in "N resolucion", with: @urbano.n_resolucion
    fill_in "N servicio2", with: @urbano.n_servicio2
    fill_in "N servicio3", with: @urbano.n_servicio3
    fill_in "Nacionalidad", with: @urbano.nacionalidad
    fill_in "Nombre casada", with: @urbano.nombre_casada
    fill_in "Nombre predio", with: @urbano.nombre_predio
    fill_in "Nombre usual", with: @urbano.nombre_usual
    fill_in "Observaciones ficha", with: @urbano.observaciones_ficha
    fill_in "Ocupacion", with: @urbano.ocupacion
    fill_in "Operacion", with: @urbano.operacion
    fill_in "Organizacion", with: @urbano.organizacion
    fill_in "Otorgado", with: @urbano.otorgado
    check "Otro t" if @urbano.otro_t
    fill_in "Paredes", with: @urbano.paredes
    fill_in "Ph", with: @urbano.ph
    check "Piso baldosa" if @urbano.piso_baldosa
    check "Piso cemento" if @urbano.piso_cemento
    check "Piso ceramica" if @urbano.piso_ceramica
    check "Piso granito" if @urbano.piso_granito
    check "Piso madera" if @urbano.piso_madera
    check "Piso otro" if @urbano.piso_otro
    check "Piso tierra" if @urbano.piso_tierra
    fill_in "Plano de referencia", with: @urbano.plano_de_referencia
    fill_in "Primer apellido", with: @urbano.primer_apellido
    fill_in "Primer nombre", with: @urbano.primer_nombre
    fill_in "Provincia", with: @urbano.provincia
    fill_in "Registro", with: @urbano.registro
    fill_in "Rollo", with: @urbano.rollo
    fill_in "S predial", with: @urbano.s_predial
    fill_in "Segundo apellido", with: @urbano.segundo_apellido
    fill_in "Segundo nombre", with: @urbano.segundo_nombre
    check "Sena satelital" if @urbano.sena_satelital
    check "Senal celular" if @urbano.senal_celular
    fill_in "Sexo", with: @urbano.sexo
    fill_in "Solo agua", with: @urbano.solo_agua
    fill_in "Sup reportada", with: @urbano.sup_reportada
    fill_in "Superficie inscrita", with: @urbano.superficie_inscrita
    fill_in "Supervisor firma", with: @urbano.supervisor_firma
    fill_in "Supervisor nombre", with: @urbano.supervisor_nombre
    fill_in "Sustanciador firma", with: @urbano.sustanciador_firma
    fill_in "Telefono", with: @urbano.telefono
    check "Telefono m" if @urbano.telefono_m
    fill_in "Tipo de litigio", with: @urbano.tipo_de_litigio
    fill_in "Tipo de persona", with: @urbano.tipo_de_persona
    fill_in "Tipo de titulo", with: @urbano.tipo_de_titulo
    fill_in "Tipo resindencial", with: @urbano.tipo_resindencial
    fill_in "Tipo resolucion", with: @urbano.tipo_resolucion
    fill_in "Titulo propiedad", with: @urbano.titulo_propiedad
    fill_in "Tomo", with: @urbano.tomo
    check "Tuberia gas" if @urbano.tuberia_gas
    check "Turístico t" if @urbano.turístico_t
    check "Tv" if @urbano.tv
    check "Uso comercial" if @urbano.uso_comercial
    check "Uso educacioal" if @urbano.uso_educacioal
    check "Uso industrial" if @urbano.uso_industrial
    check "Uso publico t" if @urbano.uso_publico_t
    check "Uso recidencial" if @urbano.uso_recidencial
    check "Uso recreacional" if @urbano.uso_recreacional
    check "Uso tuiristico" if @urbano.uso_tuiristico
    fill_in "Verficado", with: @urbano.verficado
    fill_in "Vias acesso", with: @urbano.vias_acesso
    check "Vivienda t" if @urbano.vivienda_t
    click_on "Create Urbano"

    assert_text "Urbano was successfully created"
    click_on "Back"
  end

  test "updating a Urbano" do
    visit urbanos_url
    click_on "Edit", match: :first

    check "Acueductos" if @urbano.acueductos
    fill_in "Address", with: @urbano.address
    check "Agricola t" if @urbano.agricola_t
    check "Alcantarillado" if @urbano.alcantarillado
    fill_in "Apartado", with: @urbano.apartado
    fill_in "Apellido usual", with: @urbano.apellido_usual
    fill_in "Aprovechamiento", with: @urbano.aprovechamiento
    fill_in "Asiento", with: @urbano.asiento
    fill_in "Calle", with: @urbano.calle
    fill_in "Captador firma", with: @urbano.captador_firma
    fill_in "Captador nombre", with: @urbano.captador_nombre
    fill_in "Cedula", with: @urbano.cedula
    fill_in "Cedula propetario", with: @urbano.cedula_propetario
    check "Cera" if @urbano.cera
    check "Comercial t" if @urbano.comercial_t
    check "Comunal t" if @urbano.comunal_t
    fill_in "Concesion admin", with: @urbano.concesion_admin
    fill_in "Corregimiento", with: @urbano.corregimiento
    fill_in "Cubierta techo", with: @urbano.cubierta_techo
    fill_in "Dirreccion", with: @urbano.dirreccion
    fill_in "Distrito", with: @urbano.distrito
    fill_in "Docum", with: @urbano.docum
    check "Educacional t" if @urbano.educacional_t
    fill_in "Ejido", with: @urbano.ejido
    fill_in "Electricidad", with: @urbano.electricidad
    fill_in "Empadronador firma", with: @urbano.empadronador_firma
    fill_in "Empadronador nombre", with: @urbano.empadronador_nombre
    fill_in "Empresa", with: @urbano.empresa
    fill_in "Equipo", with: @urbano.equipo
    fill_in "Estado civil", with: @urbano.estado_civil
    fill_in "Estructura techo", with: @urbano.estructura_techo
    fill_in "Fecha de nacimiento", with: @urbano.fecha_de_nacimiento
    fill_in "Fecha de ocupacion", with: @urbano.fecha_de_ocupacion
    fill_in "Fecha de registro", with: @urbano.fecha_de_registro
    fill_in "Fecha del titulo", with: @urbano.fecha_del_titulo
    fill_in "Fecha levantamiento", with: @urbano.fecha_levantamiento
    fill_in "Fecha resolucion", with: @urbano.fecha_resolucion
    fill_in "Finca", with: @urbano.finca
    fill_in "Finca madre", with: @urbano.finca_madre
    fill_in "Finca ph", with: @urbano.finca_ph
    fill_in "Firma propietario", with: @urbano.firma_propietario
    fill_in "Folio", with: @urbano.folio
    fill_in "Funcionario firma", with: @urbano.funcionario_firma
    check "Ganadero t" if @urbano.ganadero_t
    fill_in "Globo", with: @urbano.globo
    fill_in "Hora levantamiento", with: @urbano.hora_levantamiento
    fill_in "Id catastral", with: @urbano.id_catastral
    fill_in "Inclinacion", with: @urbano.inclinacion
    check "Industrial t" if @urbano.industrial_t
    fill_in "Inspector firma", with: @urbano.inspector_firma
    fill_in "Inspector nombre", with: @urbano.inspector_nombre
    fill_in "Latitude", with: @urbano.latitude
    fill_in "Litigio", with: @urbano.litigio
    fill_in "Localizacion", with: @urbano.localizacion
    fill_in "Longitude", with: @urbano.longitude
    fill_in "Lugar", with: @urbano.lugar
    check "M cordon" if @urbano.m_cordon
    check "M luz" if @urbano.m_luz
    fill_in "M otro", with: @urbano.m_otro
    fill_in "M otro2", with: @urbano.m_otro2
    fill_in "M uso", with: @urbano.m_uso
    fill_in "Material calle", with: @urbano.material_calle
    fill_in "Metodologia", with: @urbano.metodologia
    fill_in "N de orden", with: @urbano.n_de_orden
    fill_in "N dependientes", with: @urbano.n_dependientes
    fill_in "N diseminados", with: @urbano.n_diseminados
    fill_in "N manzana", with: @urbano.n_manzana
    fill_in "N mapa catastral", with: @urbano.n_mapa_catastral
    fill_in "N ortofoto", with: @urbano.n_ortofoto
    fill_in "N plano", with: @urbano.n_plano
    fill_in "N predio", with: @urbano.n_predio
    fill_in "N resolucion", with: @urbano.n_resolucion
    fill_in "N servicio2", with: @urbano.n_servicio2
    fill_in "N servicio3", with: @urbano.n_servicio3
    fill_in "Nacionalidad", with: @urbano.nacionalidad
    fill_in "Nombre casada", with: @urbano.nombre_casada
    fill_in "Nombre predio", with: @urbano.nombre_predio
    fill_in "Nombre usual", with: @urbano.nombre_usual
    fill_in "Observaciones ficha", with: @urbano.observaciones_ficha
    fill_in "Ocupacion", with: @urbano.ocupacion
    fill_in "Operacion", with: @urbano.operacion
    fill_in "Organizacion", with: @urbano.organizacion
    fill_in "Otorgado", with: @urbano.otorgado
    check "Otro t" if @urbano.otro_t
    fill_in "Paredes", with: @urbano.paredes
    fill_in "Ph", with: @urbano.ph
    check "Piso baldosa" if @urbano.piso_baldosa
    check "Piso cemento" if @urbano.piso_cemento
    check "Piso ceramica" if @urbano.piso_ceramica
    check "Piso granito" if @urbano.piso_granito
    check "Piso madera" if @urbano.piso_madera
    check "Piso otro" if @urbano.piso_otro
    check "Piso tierra" if @urbano.piso_tierra
    fill_in "Plano de referencia", with: @urbano.plano_de_referencia
    fill_in "Primer apellido", with: @urbano.primer_apellido
    fill_in "Primer nombre", with: @urbano.primer_nombre
    fill_in "Provincia", with: @urbano.provincia
    fill_in "Registro", with: @urbano.registro
    fill_in "Rollo", with: @urbano.rollo
    fill_in "S predial", with: @urbano.s_predial
    fill_in "Segundo apellido", with: @urbano.segundo_apellido
    fill_in "Segundo nombre", with: @urbano.segundo_nombre
    check "Sena satelital" if @urbano.sena_satelital
    check "Senal celular" if @urbano.senal_celular
    fill_in "Sexo", with: @urbano.sexo
    fill_in "Solo agua", with: @urbano.solo_agua
    fill_in "Sup reportada", with: @urbano.sup_reportada
    fill_in "Superficie inscrita", with: @urbano.superficie_inscrita
    fill_in "Supervisor firma", with: @urbano.supervisor_firma
    fill_in "Supervisor nombre", with: @urbano.supervisor_nombre
    fill_in "Sustanciador firma", with: @urbano.sustanciador_firma
    fill_in "Telefono", with: @urbano.telefono
    check "Telefono m" if @urbano.telefono_m
    fill_in "Tipo de litigio", with: @urbano.tipo_de_litigio
    fill_in "Tipo de persona", with: @urbano.tipo_de_persona
    fill_in "Tipo de titulo", with: @urbano.tipo_de_titulo
    fill_in "Tipo resindencial", with: @urbano.tipo_resindencial
    fill_in "Tipo resolucion", with: @urbano.tipo_resolucion
    fill_in "Titulo propiedad", with: @urbano.titulo_propiedad
    fill_in "Tomo", with: @urbano.tomo
    check "Tuberia gas" if @urbano.tuberia_gas
    check "Turístico t" if @urbano.turístico_t
    check "Tv" if @urbano.tv
    check "Uso comercial" if @urbano.uso_comercial
    check "Uso educacioal" if @urbano.uso_educacioal
    check "Uso industrial" if @urbano.uso_industrial
    check "Uso publico t" if @urbano.uso_publico_t
    check "Uso recidencial" if @urbano.uso_recidencial
    check "Uso recreacional" if @urbano.uso_recreacional
    check "Uso tuiristico" if @urbano.uso_tuiristico
    fill_in "Verficado", with: @urbano.verficado
    fill_in "Vias acesso", with: @urbano.vias_acesso
    check "Vivienda t" if @urbano.vivienda_t
    click_on "Update Urbano"

    assert_text "Urbano was successfully updated"
    click_on "Back"
  end

  test "destroying a Urbano" do
    visit urbanos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Urbano was successfully destroyed"
  end
end
