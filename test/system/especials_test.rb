require "application_system_test_case"

class EspecialsTest < ApplicationSystemTestCase
  setup do
    @especial = especials(:one)
  end

  test "visiting the index" do
    visit especials_url
    assert_selector "h1", text: "Especials"
  end

  test "creating a Especial" do
    visit especials_url
    click_on "New Especial"

    check "Acera" if @especial.acera
    check "Acueductos" if @especial.acueductos
    fill_in "Address", with: @especial.address
    check "Agua" if @especial.agua
    check "Alcantarillado" if @especial.alcantarillado
    fill_in "Apartado", with: @especial.apartado
    fill_in "Apellido usual", with: @especial.apellido_usual
    fill_in "Asiento", with: @especial.asiento
    fill_in "Calle", with: @especial.calle
    fill_in "Captador firma", with: @especial.captador_firma
    fill_in "Captador nombre", with: @especial.captador_nombre
    fill_in "Cedula", with: @especial.cedula
    fill_in "Cedula propetario", with: @especial.cedula_propetario
    fill_in "Cercas existentes", with: @especial.cercas_existentes
    fill_in "Concesion admin", with: @especial.concesion_admin
    fill_in "Corregimiento", with: @especial.corregimiento
    fill_in "Cubierta techo", with: @especial.cubierta_techo
    fill_in "Dirreccion", with: @especial.dirreccion
    fill_in "Distrito", with: @especial.distrito
    fill_in "Docum", with: @especial.docum
    fill_in "Ejido", with: @especial.ejido
    fill_in "Electricidad", with: @especial.electricidad
    fill_in "Empadronador firma", with: @especial.empadronador_firma
    fill_in "Empadronador nombre", with: @especial.empadronador_nombre
    fill_in "Empresa", with: @especial.empresa
    fill_in "Equipo", with: @especial.equipo
    fill_in "Estado civil", with: @especial.estado_civil
    fill_in "Estructura techo", with: @especial.estructura_techo
    fill_in "Fecha de nacimiento", with: @especial.fecha_de_nacimiento
    fill_in "Fecha de ocupacion", with: @especial.fecha_de_ocupacion
    fill_in "Fecha de registro", with: @especial.fecha_de_registro
    fill_in "Fecha del titulo", with: @especial.fecha_del_titulo
    fill_in "Fecha levantamiento", with: @especial.fecha_levantamiento
    fill_in "Fecha resolucion", with: @especial.fecha_resolucion
    fill_in "Finca", with: @especial.finca
    fill_in "Finca madre", with: @especial.finca_madre
    fill_in "Finca ph", with: @especial.finca_ph
    fill_in "Firma propietario", with: @especial.firma_propietario
    fill_in "Folio", with: @especial.folio
    fill_in "Funcionario firma", with: @especial.funcionario_firma
    fill_in "Geo point", with: @especial.geo_point
    fill_in "Globo", with: @especial.globo
    fill_in "Hidrigrafia", with: @especial.hidrigrafia
    fill_in "Hora levantamiento", with: @especial.hora_levantamiento
    fill_in "Id catastral", with: @especial.id_catastral
    fill_in "Inspector firma", with: @especial.inspector_firma
    fill_in "Inspector nombre", with: @especial.inspector_nombre
    fill_in "Latitude", with: @especial.latitude
    fill_in "Litigio", with: @especial.litigio
    fill_in "Localizacion", with: @especial.localizacion
    fill_in "Longitude", with: @especial.longitude
    fill_in "Lugar", with: @especial.lugar
    check "Luz" if @especial.luz
    check "M cordon" if @especial.m_cordon
    check "M luz" if @especial.m_luz
    fill_in "M otro", with: @especial.m_otro
    fill_in "M otro2", with: @especial.m_otro2
    fill_in "Metodologia", with: @especial.metodologia
    fill_in "N de orden", with: @especial.n_de_orden
    fill_in "N dependientes", with: @especial.n_dependientes
    fill_in "N diseminados", with: @especial.n_diseminados
    fill_in "N manzanas", with: @especial.n_manzanas
    fill_in "N mapa catastral", with: @especial.n_mapa_catastral
    fill_in "N ortofoto", with: @especial.n_ortofoto
    fill_in "N plano", with: @especial.n_plano
    fill_in "N predio", with: @especial.n_predio
    fill_in "N resolucion", with: @especial.n_resolucion
    fill_in "N servicio2", with: @especial.n_servicio2
    fill_in "N servicio3", with: @especial.n_servicio3
    fill_in "Nacionalidad", with: @especial.nacionalidad
    fill_in "Nombre casada", with: @especial.nombre_casada
    fill_in "Nombre predio", with: @especial.nombre_predio
    fill_in "Nombre usual", with: @especial.nombre_usual
    fill_in "Observaciones ficha", with: @especial.observaciones_ficha
    fill_in "Ocupacion", with: @especial.ocupacion
    fill_in "Operacion", with: @especial.operacion
    fill_in "Organizacion", with: @especial.organizacion
    fill_in "Otorgado", with: @especial.otorgado
    fill_in "Paredes", with: @especial.paredes
    fill_in "Pendiente ap", with: @especial.pendiente_ap
    fill_in "Ph", with: @especial.ph
    check "Piso baldosa" if @especial.piso_baldosa
    check "Piso cemento" if @especial.piso_cemento
    check "Piso ceramica" if @especial.piso_ceramica
    check "Piso granito" if @especial.piso_granito
    check "Piso madera" if @especial.piso_madera
    check "Piso otro" if @especial.piso_otro
    check "Piso tierra" if @especial.piso_tierra
    fill_in "Plano de referencia", with: @especial.plano_de_referencia
    fill_in "Primer apellido", with: @especial.primer_apellido
    fill_in "Primer nombre", with: @especial.primer_nombre
    fill_in "Provincia", with: @especial.provincia
    fill_in "Registro", with: @especial.registro
    fill_in "Rollo", with: @especial.rollo
    fill_in "S predial", with: @especial.s_predial
    fill_in "Segundo apellido", with: @especial.segundo_apellido
    fill_in "Segundo nombre", with: @especial.segundo_nombre
    check "Sena satelital" if @especial.sena_satelital
    check "Senal celular" if @especial.senal_celular
    fill_in "Servidumbre", with: @especial.servidumbre
    fill_in "Servidumbre de acceso", with: @especial.servidumbre_de_acceso
    fill_in "Sexo", with: @especial.sexo
    fill_in "Solo agua", with: @especial.solo_agua
    fill_in "Sup reportada", with: @especial.sup_reportada
    fill_in "Superficie inscrita", with: @especial.superficie_inscrita
    fill_in "Supervisor firma", with: @especial.supervisor_firma
    fill_in "Supervisor nombre", with: @especial.supervisor_nombre
    fill_in "Sustanciador firma", with: @especial.sustanciador_firma
    fill_in "Telefono", with: @especial.telefono
    check "Telefono m" if @especial.telefono_m
    fill_in "Tipo de construccion", with: @especial.tipo_de_construccion
    fill_in "Tipo de litigio", with: @especial.tipo_de_litigio
    fill_in "Tipo de persona", with: @especial.tipo_de_persona
    fill_in "Tipo de titulo", with: @especial.tipo_de_titulo
    fill_in "Tipo resindencial", with: @especial.tipo_resindencial
    fill_in "Tipo resolucion", with: @especial.tipo_resolucion
    fill_in "Titulo propiedad", with: @especial.titulo_propiedad
    fill_in "Tomo", with: @especial.tomo
    fill_in "Topografia", with: @especial.topografia
    check "Tuberia gas" if @especial.tuberia_gas
    check "Tv" if @especial.tv
    check "Uso comercial" if @especial.uso_comercial
    fill_in "Uso de tierra", with: @especial.uso_de_tierra
    check "Uso educacioal" if @especial.uso_educacioal
    check "Uso industrial" if @especial.uso_industrial
    check "Uso recidencial" if @especial.uso_recidencial
    check "Uso recreacional" if @especial.uso_recreacional
    check "Uso tuiristico" if @especial.uso_tuiristico
    fill_in "Verficado", with: @especial.verficado
    fill_in "Vias de acceso", with: @especial.vias_de_acceso
    check "X none" if @especial.x_none
    click_on "Create Especial"

    assert_text "Especial was successfully created"
    click_on "Back"
  end

  test "updating a Especial" do
    visit especials_url
    click_on "Edit", match: :first

    check "Acera" if @especial.acera
    check "Acueductos" if @especial.acueductos
    fill_in "Address", with: @especial.address
    check "Agua" if @especial.agua
    check "Alcantarillado" if @especial.alcantarillado
    fill_in "Apartado", with: @especial.apartado
    fill_in "Apellido usual", with: @especial.apellido_usual
    fill_in "Asiento", with: @especial.asiento
    fill_in "Calle", with: @especial.calle
    fill_in "Captador firma", with: @especial.captador_firma
    fill_in "Captador nombre", with: @especial.captador_nombre
    fill_in "Cedula", with: @especial.cedula
    fill_in "Cedula propetario", with: @especial.cedula_propetario
    fill_in "Cercas existentes", with: @especial.cercas_existentes
    fill_in "Concesion admin", with: @especial.concesion_admin
    fill_in "Corregimiento", with: @especial.corregimiento
    fill_in "Cubierta techo", with: @especial.cubierta_techo
    fill_in "Dirreccion", with: @especial.dirreccion
    fill_in "Distrito", with: @especial.distrito
    fill_in "Docum", with: @especial.docum
    fill_in "Ejido", with: @especial.ejido
    fill_in "Electricidad", with: @especial.electricidad
    fill_in "Empadronador firma", with: @especial.empadronador_firma
    fill_in "Empadronador nombre", with: @especial.empadronador_nombre
    fill_in "Empresa", with: @especial.empresa
    fill_in "Equipo", with: @especial.equipo
    fill_in "Estado civil", with: @especial.estado_civil
    fill_in "Estructura techo", with: @especial.estructura_techo
    fill_in "Fecha de nacimiento", with: @especial.fecha_de_nacimiento
    fill_in "Fecha de ocupacion", with: @especial.fecha_de_ocupacion
    fill_in "Fecha de registro", with: @especial.fecha_de_registro
    fill_in "Fecha del titulo", with: @especial.fecha_del_titulo
    fill_in "Fecha levantamiento", with: @especial.fecha_levantamiento
    fill_in "Fecha resolucion", with: @especial.fecha_resolucion
    fill_in "Finca", with: @especial.finca
    fill_in "Finca madre", with: @especial.finca_madre
    fill_in "Finca ph", with: @especial.finca_ph
    fill_in "Firma propietario", with: @especial.firma_propietario
    fill_in "Folio", with: @especial.folio
    fill_in "Funcionario firma", with: @especial.funcionario_firma
    fill_in "Geo point", with: @especial.geo_point
    fill_in "Globo", with: @especial.globo
    fill_in "Hidrigrafia", with: @especial.hidrigrafia
    fill_in "Hora levantamiento", with: @especial.hora_levantamiento
    fill_in "Id catastral", with: @especial.id_catastral
    fill_in "Inspector firma", with: @especial.inspector_firma
    fill_in "Inspector nombre", with: @especial.inspector_nombre
    fill_in "Latitude", with: @especial.latitude
    fill_in "Litigio", with: @especial.litigio
    fill_in "Localizacion", with: @especial.localizacion
    fill_in "Longitude", with: @especial.longitude
    fill_in "Lugar", with: @especial.lugar
    check "Luz" if @especial.luz
    check "M cordon" if @especial.m_cordon
    check "M luz" if @especial.m_luz
    fill_in "M otro", with: @especial.m_otro
    fill_in "M otro2", with: @especial.m_otro2
    fill_in "Metodologia", with: @especial.metodologia
    fill_in "N de orden", with: @especial.n_de_orden
    fill_in "N dependientes", with: @especial.n_dependientes
    fill_in "N diseminados", with: @especial.n_diseminados
    fill_in "N manzanas", with: @especial.n_manzanas
    fill_in "N mapa catastral", with: @especial.n_mapa_catastral
    fill_in "N ortofoto", with: @especial.n_ortofoto
    fill_in "N plano", with: @especial.n_plano
    fill_in "N predio", with: @especial.n_predio
    fill_in "N resolucion", with: @especial.n_resolucion
    fill_in "N servicio2", with: @especial.n_servicio2
    fill_in "N servicio3", with: @especial.n_servicio3
    fill_in "Nacionalidad", with: @especial.nacionalidad
    fill_in "Nombre casada", with: @especial.nombre_casada
    fill_in "Nombre predio", with: @especial.nombre_predio
    fill_in "Nombre usual", with: @especial.nombre_usual
    fill_in "Observaciones ficha", with: @especial.observaciones_ficha
    fill_in "Ocupacion", with: @especial.ocupacion
    fill_in "Operacion", with: @especial.operacion
    fill_in "Organizacion", with: @especial.organizacion
    fill_in "Otorgado", with: @especial.otorgado
    fill_in "Paredes", with: @especial.paredes
    fill_in "Pendiente ap", with: @especial.pendiente_ap
    fill_in "Ph", with: @especial.ph
    check "Piso baldosa" if @especial.piso_baldosa
    check "Piso cemento" if @especial.piso_cemento
    check "Piso ceramica" if @especial.piso_ceramica
    check "Piso granito" if @especial.piso_granito
    check "Piso madera" if @especial.piso_madera
    check "Piso otro" if @especial.piso_otro
    check "Piso tierra" if @especial.piso_tierra
    fill_in "Plano de referencia", with: @especial.plano_de_referencia
    fill_in "Primer apellido", with: @especial.primer_apellido
    fill_in "Primer nombre", with: @especial.primer_nombre
    fill_in "Provincia", with: @especial.provincia
    fill_in "Registro", with: @especial.registro
    fill_in "Rollo", with: @especial.rollo
    fill_in "S predial", with: @especial.s_predial
    fill_in "Segundo apellido", with: @especial.segundo_apellido
    fill_in "Segundo nombre", with: @especial.segundo_nombre
    check "Sena satelital" if @especial.sena_satelital
    check "Senal celular" if @especial.senal_celular
    fill_in "Servidumbre", with: @especial.servidumbre
    fill_in "Servidumbre de acceso", with: @especial.servidumbre_de_acceso
    fill_in "Sexo", with: @especial.sexo
    fill_in "Solo agua", with: @especial.solo_agua
    fill_in "Sup reportada", with: @especial.sup_reportada
    fill_in "Superficie inscrita", with: @especial.superficie_inscrita
    fill_in "Supervisor firma", with: @especial.supervisor_firma
    fill_in "Supervisor nombre", with: @especial.supervisor_nombre
    fill_in "Sustanciador firma", with: @especial.sustanciador_firma
    fill_in "Telefono", with: @especial.telefono
    check "Telefono m" if @especial.telefono_m
    fill_in "Tipo de construccion", with: @especial.tipo_de_construccion
    fill_in "Tipo de litigio", with: @especial.tipo_de_litigio
    fill_in "Tipo de persona", with: @especial.tipo_de_persona
    fill_in "Tipo de titulo", with: @especial.tipo_de_titulo
    fill_in "Tipo resindencial", with: @especial.tipo_resindencial
    fill_in "Tipo resolucion", with: @especial.tipo_resolucion
    fill_in "Titulo propiedad", with: @especial.titulo_propiedad
    fill_in "Tomo", with: @especial.tomo
    fill_in "Topografia", with: @especial.topografia
    check "Tuberia gas" if @especial.tuberia_gas
    check "Tv" if @especial.tv
    check "Uso comercial" if @especial.uso_comercial
    fill_in "Uso de tierra", with: @especial.uso_de_tierra
    check "Uso educacioal" if @especial.uso_educacioal
    check "Uso industrial" if @especial.uso_industrial
    check "Uso recidencial" if @especial.uso_recidencial
    check "Uso recreacional" if @especial.uso_recreacional
    check "Uso tuiristico" if @especial.uso_tuiristico
    fill_in "Verficado", with: @especial.verficado
    fill_in "Vias de acceso", with: @especial.vias_de_acceso
    check "X none" if @especial.x_none
    click_on "Update Especial"

    assert_text "Especial was successfully updated"
    click_on "Back"
  end

  test "destroying a Especial" do
    visit especials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Especial was successfully destroyed"
  end
end
