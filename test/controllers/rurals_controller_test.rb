require 'test_helper'

class RuralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural = rurals(:one)
  end

  test "should get index" do
    get rurals_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_url
    assert_response :success
  end

  test "should create rural" do
    assert_difference('Rural.count') do
      post rurals_url, params: { rural: { agua: @rural.agua, apartado: @rural.apartado, apellido_usual: @rural.apellido_usual, asiento: @rural.asiento, calle: @rural.calle, captador_firma: @rural.captador_firma, captador_nombre: @rural.captador_nombre, cedula: @rural.cedula, cedula_propetario: @rural.cedula_propetario, cercas_existentes: @rural.cercas_existentes, concesion_admin: @rural.concesion_admin, corregimiento: @rural.corregimiento, de_otro: @rural.de_otro, del_propietario: @rural.del_propietario, dirreccion: @rural.dirreccion, distrito: @rural.distrito, docum: @rural.docum, ejido: @rural.ejido, empadronador_firma: @rural.empadronador_firma, empadronador_nombre: @rural.empadronador_nombre, empresa: @rural.empresa, equipo: @rural.equipo, estado_civil: @rural.estado_civil, fecha_de_nacimiento: @rural.fecha_de_nacimiento, fecha_de_ocupacion: @rural.fecha_de_ocupacion, fecha_de_registro: @rural.fecha_de_registro, fecha_del_titulo: @rural.fecha_del_titulo, fecha_levantamiento: @rural.fecha_levantamiento, fecha_resolucion: @rural.fecha_resolucion, finca: @rural.finca, finca_madre: @rural.finca_madre, finca_ph: @rural.finca_ph, firma_propietario: @rural.firma_propietario, folio: @rural.folio, funcionario_firma: @rural.funcionario_firma, geo_point: @rural.geo_point, globo: @rural.globo, hidrografia: @rural.hidrografia, hora_levantamiento: @rural.hora_levantamiento, id_catastral: @rural.id_catastral, inspector_firma: @rural.inspector_firma, inspector_nombre: @rural.inspector_nombre, litigio: @rural.litigio, localizacion: @rural.localizacion, lugar: @rural.lugar, luz: @rural.luz, metodologia: @rural.metodologia, n_de_orden: @rural.n_de_orden, n_dependientes: @rural.n_dependientes, n_mapa_catastral: @rural.n_mapa_catastral, n_ortofoto: @rural.n_ortofoto, n_plano: @rural.n_plano, n_predio: @rural.n_predio, n_resolucion: @rural.n_resolucion, nacionalidad: @rural.nacionalidad, nombre_casada: @rural.nombre_casada, nombre_predio: @rural.nombre_predio, nombre_usual: @rural.nombre_usual, observaciones_ficha: @rural.observaciones_ficha, ocupacion: @rural.ocupacion, operacion: @rural.operacion, organizacion: @rural.organizacion, otorgado: @rural.otorgado, pendiente_ap: @rural.pendiente_ap, ph: @rural.ph, plano_de_referencia: @rural.plano_de_referencia, primer_apellido: @rural.primer_apellido, primer_nombre: @rural.primer_nombre, provincia: @rural.provincia, registro: @rural.registro, rollo: @rural.rollo, s_predial: @rural.s_predial, segundo_apellido: @rural.segundo_apellido, segundo_nombre: @rural.segundo_nombre, servidumbre: @rural.servidumbre, servidumbre_de_acceso: @rural.servidumbre_de_acceso, sexo: @rural.sexo, sup_reportada: @rural.sup_reportada, superficie_inscrita: @rural.superficie_inscrita, supervisor_firma: @rural.supervisor_firma, supervisor_nombre: @rural.supervisor_nombre, sustanciador_firma: @rural.sustanciador_firma, telefono: @rural.telefono, tipo_de_construccion: @rural.tipo_de_construccion, tipo_de_litigio: @rural.tipo_de_litigio, tipo_de_persona: @rural.tipo_de_persona, tipo_de_titulo: @rural.tipo_de_titulo, tipo_resolucion: @rural.tipo_resolucion, titulo_propiedad: @rural.titulo_propiedad, tomo: @rural.tomo, topografia: @rural.topografia, user_id: @rural.user_id, uso_de_tierra: @rural.uso_de_tierra, verficado: @rural.verficado, vias_de_acceso: @rural.vias_de_acceso, x_none: @rural.x_none } }
    end

    assert_redirected_to rural_url(Rural.last)
  end

  test "should show rural" do
    get rural_url(@rural)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_url(@rural)
    assert_response :success
  end

  test "should update rural" do
    patch rural_url(@rural), params: { rural: { agua: @rural.agua, apartado: @rural.apartado, apellido_usual: @rural.apellido_usual, asiento: @rural.asiento, calle: @rural.calle, captador_firma: @rural.captador_firma, captador_nombre: @rural.captador_nombre, cedula: @rural.cedula, cedula_propetario: @rural.cedula_propetario, cercas_existentes: @rural.cercas_existentes, concesion_admin: @rural.concesion_admin, corregimiento: @rural.corregimiento, de_otro: @rural.de_otro, del_propietario: @rural.del_propietario, dirreccion: @rural.dirreccion, distrito: @rural.distrito, docum: @rural.docum, ejido: @rural.ejido, empadronador_firma: @rural.empadronador_firma, empadronador_nombre: @rural.empadronador_nombre, empresa: @rural.empresa, equipo: @rural.equipo, estado_civil: @rural.estado_civil, fecha_de_nacimiento: @rural.fecha_de_nacimiento, fecha_de_ocupacion: @rural.fecha_de_ocupacion, fecha_de_registro: @rural.fecha_de_registro, fecha_del_titulo: @rural.fecha_del_titulo, fecha_levantamiento: @rural.fecha_levantamiento, fecha_resolucion: @rural.fecha_resolucion, finca: @rural.finca, finca_madre: @rural.finca_madre, finca_ph: @rural.finca_ph, firma_propietario: @rural.firma_propietario, folio: @rural.folio, funcionario_firma: @rural.funcionario_firma, geo_point: @rural.geo_point, globo: @rural.globo, hidrografia: @rural.hidrografia, hora_levantamiento: @rural.hora_levantamiento, id_catastral: @rural.id_catastral, inspector_firma: @rural.inspector_firma, inspector_nombre: @rural.inspector_nombre, litigio: @rural.litigio, localizacion: @rural.localizacion, lugar: @rural.lugar, luz: @rural.luz, metodologia: @rural.metodologia, n_de_orden: @rural.n_de_orden, n_dependientes: @rural.n_dependientes, n_mapa_catastral: @rural.n_mapa_catastral, n_ortofoto: @rural.n_ortofoto, n_plano: @rural.n_plano, n_predio: @rural.n_predio, n_resolucion: @rural.n_resolucion, nacionalidad: @rural.nacionalidad, nombre_casada: @rural.nombre_casada, nombre_predio: @rural.nombre_predio, nombre_usual: @rural.nombre_usual, observaciones_ficha: @rural.observaciones_ficha, ocupacion: @rural.ocupacion, operacion: @rural.operacion, organizacion: @rural.organizacion, otorgado: @rural.otorgado, pendiente_ap: @rural.pendiente_ap, ph: @rural.ph, plano_de_referencia: @rural.plano_de_referencia, primer_apellido: @rural.primer_apellido, primer_nombre: @rural.primer_nombre, provincia: @rural.provincia, registro: @rural.registro, rollo: @rural.rollo, s_predial: @rural.s_predial, segundo_apellido: @rural.segundo_apellido, segundo_nombre: @rural.segundo_nombre, servidumbre: @rural.servidumbre, servidumbre_de_acceso: @rural.servidumbre_de_acceso, sexo: @rural.sexo, sup_reportada: @rural.sup_reportada, superficie_inscrita: @rural.superficie_inscrita, supervisor_firma: @rural.supervisor_firma, supervisor_nombre: @rural.supervisor_nombre, sustanciador_firma: @rural.sustanciador_firma, telefono: @rural.telefono, tipo_de_construccion: @rural.tipo_de_construccion, tipo_de_litigio: @rural.tipo_de_litigio, tipo_de_persona: @rural.tipo_de_persona, tipo_de_titulo: @rural.tipo_de_titulo, tipo_resolucion: @rural.tipo_resolucion, titulo_propiedad: @rural.titulo_propiedad, tomo: @rural.tomo, topografia: @rural.topografia, user_id: @rural.user_id, uso_de_tierra: @rural.uso_de_tierra, verficado: @rural.verficado, vias_de_acceso: @rural.vias_de_acceso, x_none: @rural.x_none } }
    assert_redirected_to rural_url(@rural)
  end

  test "should destroy rural" do
    assert_difference('Rural.count', -1) do
      delete rural_url(@rural)
    end

    assert_redirected_to rurals_url
  end
end
