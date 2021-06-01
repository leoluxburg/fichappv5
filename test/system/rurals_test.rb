require "application_system_test_case"

class RuralsTest < ApplicationSystemTestCase
  setup do
    @rural = rurals(:one)
  end

  test "visiting the index" do
    visit rurals_url
    assert_selector "h1", text: "Rurals"
  end

  test "creating a Rural" do
    visit rurals_url
    click_on "New Rural"

    check "Agua" if @rural.agua
    fill_in "Apartado", with: @rural.apartado
    fill_in "Apellido usual", with: @rural.apellido_usual
    fill_in "Asiento", with: @rural.asiento
    fill_in "Calle", with: @rural.calle
    fill_in "Captador firma", with: @rural.captador_firma
    fill_in "Captador nombre", with: @rural.captador_nombre
    fill_in "Cedula", with: @rural.cedula
    fill_in "Cedula propetario", with: @rural.cedula_propetario
    fill_in "Cercas existentes", with: @rural.cercas_existentes
    fill_in "Concesion admin", with: @rural.concesion_admin
    fill_in "Corregimiento", with: @rural.corregimiento
    fill_in "De otro", with: @rural.de_otro
    fill_in "Del propietario", with: @rural.del_propietario
    fill_in "Dirreccion", with: @rural.dirreccion
    fill_in "Distrito", with: @rural.distrito
    fill_in "Docum", with: @rural.docum
    fill_in "Ejido", with: @rural.ejido
    fill_in "Empadronador firma", with: @rural.empadronador_firma
    fill_in "Empadronador nombre", with: @rural.empadronador_nombre
    fill_in "Empresa", with: @rural.empresa
    fill_in "Equipo", with: @rural.equipo
    fill_in "Estado civil", with: @rural.estado_civil
    fill_in "Fecha de nacimiento", with: @rural.fecha_de_nacimiento
    fill_in "Fecha de ocupacion", with: @rural.fecha_de_ocupacion
    fill_in "Fecha de registro", with: @rural.fecha_de_registro
    fill_in "Fecha del titulo", with: @rural.fecha_del_titulo
    fill_in "Fecha levantamiento", with: @rural.fecha_levantamiento
    fill_in "Fecha resolucion", with: @rural.fecha_resolucion
    fill_in "Finca", with: @rural.finca
    fill_in "Finca madre", with: @rural.finca_madre
    fill_in "Finca ph", with: @rural.finca_ph
    fill_in "Firma propietario", with: @rural.firma_propietario
    fill_in "Folio", with: @rural.folio
    fill_in "Funcionario firma", with: @rural.funcionario_firma
    fill_in "Geo point", with: @rural.geo_point
    fill_in "Globo", with: @rural.globo
    fill_in "Hidrografia", with: @rural.hidrografia
    fill_in "Hora levantamiento", with: @rural.hora_levantamiento
    fill_in "Id catastral", with: @rural.id_catastral
    fill_in "Inspector firma", with: @rural.inspector_firma
    fill_in "Inspector nombre", with: @rural.inspector_nombre
    fill_in "Litigio", with: @rural.litigio
    fill_in "Localizacion", with: @rural.localizacion
    fill_in "Lugar", with: @rural.lugar
    check "Luz" if @rural.luz
    fill_in "Metodologia", with: @rural.metodologia
    fill_in "N de orden", with: @rural.n_de_orden
    fill_in "N dependientes", with: @rural.n_dependientes
    fill_in "N mapa catastral", with: @rural.n_mapa_catastral
    fill_in "N ortofoto", with: @rural.n_ortofoto
    fill_in "N plano", with: @rural.n_plano
    fill_in "N predio", with: @rural.n_predio
    fill_in "N resolucion", with: @rural.n_resolucion
    fill_in "Nacionalidad", with: @rural.nacionalidad
    fill_in "Nombre casada", with: @rural.nombre_casada
    fill_in "Nombre predio", with: @rural.nombre_predio
    fill_in "Nombre usual", with: @rural.nombre_usual
    fill_in "Observaciones ficha", with: @rural.observaciones_ficha
    fill_in "Ocupacion", with: @rural.ocupacion
    fill_in "Operacion", with: @rural.operacion
    fill_in "Organizacion", with: @rural.organizacion
    fill_in "Otorgado", with: @rural.otorgado
    fill_in "Pendiente ap", with: @rural.pendiente_ap
    fill_in "Ph", with: @rural.ph
    fill_in "Plano de referencia", with: @rural.plano_de_referencia
    fill_in "Primer apellido", with: @rural.primer_apellido
    fill_in "Primer nombre", with: @rural.primer_nombre
    fill_in "Provincia", with: @rural.provincia
    fill_in "Registro", with: @rural.registro
    fill_in "Rollo", with: @rural.rollo
    fill_in "S predial", with: @rural.s_predial
    fill_in "Segundo apellido", with: @rural.segundo_apellido
    fill_in "Segundo nombre", with: @rural.segundo_nombre
    fill_in "Servidumbre", with: @rural.servidumbre
    fill_in "Servidumbre de acceso", with: @rural.servidumbre_de_acceso
    fill_in "Sexo", with: @rural.sexo
    fill_in "Sup reportada", with: @rural.sup_reportada
    fill_in "Superficie inscrita", with: @rural.superficie_inscrita
    fill_in "Supervisor firma", with: @rural.supervisor_firma
    fill_in "Supervisor nombre", with: @rural.supervisor_nombre
    fill_in "Sustanciador firma", with: @rural.sustanciador_firma
    fill_in "Telefono", with: @rural.telefono
    fill_in "Tipo de construccion", with: @rural.tipo_de_construccion
    fill_in "Tipo de litigio", with: @rural.tipo_de_litigio
    fill_in "Tipo de persona", with: @rural.tipo_de_persona
    fill_in "Tipo de titulo", with: @rural.tipo_de_titulo
    fill_in "Tipo resolucion", with: @rural.tipo_resolucion
    fill_in "Titulo propiedad", with: @rural.titulo_propiedad
    fill_in "Tomo", with: @rural.tomo
    fill_in "Topografia", with: @rural.topografia
    fill_in "User", with: @rural.user_id
    fill_in "Uso de tierra", with: @rural.uso_de_tierra
    fill_in "Verficado", with: @rural.verficado
    fill_in "Vias de acceso", with: @rural.vias_de_acceso
    check "X none" if @rural.x_none
    click_on "Create Rural"

    assert_text "Rural was successfully created"
    click_on "Back"
  end

  test "updating a Rural" do
    visit rurals_url
    click_on "Edit", match: :first

    check "Agua" if @rural.agua
    fill_in "Apartado", with: @rural.apartado
    fill_in "Apellido usual", with: @rural.apellido_usual
    fill_in "Asiento", with: @rural.asiento
    fill_in "Calle", with: @rural.calle
    fill_in "Captador firma", with: @rural.captador_firma
    fill_in "Captador nombre", with: @rural.captador_nombre
    fill_in "Cedula", with: @rural.cedula
    fill_in "Cedula propetario", with: @rural.cedula_propetario
    fill_in "Cercas existentes", with: @rural.cercas_existentes
    fill_in "Concesion admin", with: @rural.concesion_admin
    fill_in "Corregimiento", with: @rural.corregimiento
    fill_in "De otro", with: @rural.de_otro
    fill_in "Del propietario", with: @rural.del_propietario
    fill_in "Dirreccion", with: @rural.dirreccion
    fill_in "Distrito", with: @rural.distrito
    fill_in "Docum", with: @rural.docum
    fill_in "Ejido", with: @rural.ejido
    fill_in "Empadronador firma", with: @rural.empadronador_firma
    fill_in "Empadronador nombre", with: @rural.empadronador_nombre
    fill_in "Empresa", with: @rural.empresa
    fill_in "Equipo", with: @rural.equipo
    fill_in "Estado civil", with: @rural.estado_civil
    fill_in "Fecha de nacimiento", with: @rural.fecha_de_nacimiento
    fill_in "Fecha de ocupacion", with: @rural.fecha_de_ocupacion
    fill_in "Fecha de registro", with: @rural.fecha_de_registro
    fill_in "Fecha del titulo", with: @rural.fecha_del_titulo
    fill_in "Fecha levantamiento", with: @rural.fecha_levantamiento
    fill_in "Fecha resolucion", with: @rural.fecha_resolucion
    fill_in "Finca", with: @rural.finca
    fill_in "Finca madre", with: @rural.finca_madre
    fill_in "Finca ph", with: @rural.finca_ph
    fill_in "Firma propietario", with: @rural.firma_propietario
    fill_in "Folio", with: @rural.folio
    fill_in "Funcionario firma", with: @rural.funcionario_firma
    fill_in "Geo point", with: @rural.geo_point
    fill_in "Globo", with: @rural.globo
    fill_in "Hidrografia", with: @rural.hidrografia
    fill_in "Hora levantamiento", with: @rural.hora_levantamiento
    fill_in "Id catastral", with: @rural.id_catastral
    fill_in "Inspector firma", with: @rural.inspector_firma
    fill_in "Inspector nombre", with: @rural.inspector_nombre
    fill_in "Litigio", with: @rural.litigio
    fill_in "Localizacion", with: @rural.localizacion
    fill_in "Lugar", with: @rural.lugar
    check "Luz" if @rural.luz
    fill_in "Metodologia", with: @rural.metodologia
    fill_in "N de orden", with: @rural.n_de_orden
    fill_in "N dependientes", with: @rural.n_dependientes
    fill_in "N mapa catastral", with: @rural.n_mapa_catastral
    fill_in "N ortofoto", with: @rural.n_ortofoto
    fill_in "N plano", with: @rural.n_plano
    fill_in "N predio", with: @rural.n_predio
    fill_in "N resolucion", with: @rural.n_resolucion
    fill_in "Nacionalidad", with: @rural.nacionalidad
    fill_in "Nombre casada", with: @rural.nombre_casada
    fill_in "Nombre predio", with: @rural.nombre_predio
    fill_in "Nombre usual", with: @rural.nombre_usual
    fill_in "Observaciones ficha", with: @rural.observaciones_ficha
    fill_in "Ocupacion", with: @rural.ocupacion
    fill_in "Operacion", with: @rural.operacion
    fill_in "Organizacion", with: @rural.organizacion
    fill_in "Otorgado", with: @rural.otorgado
    fill_in "Pendiente ap", with: @rural.pendiente_ap
    fill_in "Ph", with: @rural.ph
    fill_in "Plano de referencia", with: @rural.plano_de_referencia
    fill_in "Primer apellido", with: @rural.primer_apellido
    fill_in "Primer nombre", with: @rural.primer_nombre
    fill_in "Provincia", with: @rural.provincia
    fill_in "Registro", with: @rural.registro
    fill_in "Rollo", with: @rural.rollo
    fill_in "S predial", with: @rural.s_predial
    fill_in "Segundo apellido", with: @rural.segundo_apellido
    fill_in "Segundo nombre", with: @rural.segundo_nombre
    fill_in "Servidumbre", with: @rural.servidumbre
    fill_in "Servidumbre de acceso", with: @rural.servidumbre_de_acceso
    fill_in "Sexo", with: @rural.sexo
    fill_in "Sup reportada", with: @rural.sup_reportada
    fill_in "Superficie inscrita", with: @rural.superficie_inscrita
    fill_in "Supervisor firma", with: @rural.supervisor_firma
    fill_in "Supervisor nombre", with: @rural.supervisor_nombre
    fill_in "Sustanciador firma", with: @rural.sustanciador_firma
    fill_in "Telefono", with: @rural.telefono
    fill_in "Tipo de construccion", with: @rural.tipo_de_construccion
    fill_in "Tipo de litigio", with: @rural.tipo_de_litigio
    fill_in "Tipo de persona", with: @rural.tipo_de_persona
    fill_in "Tipo de titulo", with: @rural.tipo_de_titulo
    fill_in "Tipo resolucion", with: @rural.tipo_resolucion
    fill_in "Titulo propiedad", with: @rural.titulo_propiedad
    fill_in "Tomo", with: @rural.tomo
    fill_in "Topografia", with: @rural.topografia
    fill_in "User", with: @rural.user_id
    fill_in "Uso de tierra", with: @rural.uso_de_tierra
    fill_in "Verficado", with: @rural.verficado
    fill_in "Vias de acceso", with: @rural.vias_de_acceso
    check "X none" if @rural.x_none
    click_on "Update Rural"

    assert_text "Rural was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural" do
    visit rurals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural was successfully destroyed"
  end
end
