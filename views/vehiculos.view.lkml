# The name of this view in Looker is "Vehiculos"
view: vehiculos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datos_limpios.Vehiculos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aceleracio" in Explore.

  dimension: aceleracio {
    type: string
    sql: ${TABLE}.aceleracio ;;
  }

  dimension: codigo_alar {
    type: string
    sql: ${TABLE}.codigoAlar ;;
  }

  dimension: codigo_cama {
    type: string
    sql: ${TABLE}.codigoCama ;;
  }

  dimension: codigo_comp {
    type: string
    sql: ${TABLE}.codigoComp ;;
  }

  dimension: codigo_even {
    type: string
    sql: ${TABLE}.codigoEven ;;
  }

  dimension: codigo_peri {
    type: string
    sql: ${TABLE}.codigoPeri ;;
  }

  dimension: consumo_com {
    type: string
    sql: ${TABLE}.consumoCom ;;
  }

  dimension: consumo_ene {
    type: string
    sql: ${TABLE}.consumoEne ;;
  }

  dimension: estado_aper {
    type: string
    sql: ${TABLE}.estadoAper ;;
  }

  dimension: estado_cint {
    type: string
    sql: ${TABLE}.estadoCint ;;
  }

  dimension: estado_desg {
    type: string
    sql: ${TABLE}.estadoDesg ;;
  }

  dimension: estimaci_1 {
    type: string
    sql: ${TABLE}.estimaci_1 ;;
  }

  dimension: estimaci_2 {
    type: string
    sql: ${TABLE}.estimaci_2 ;;
  }

  dimension: estimacion {
    type: string
    sql: ${TABLE}.estimacion ;;
  }

  dimension: fecha_hora_e {
    type: string
    sql: ${TABLE}.fechaHoraE ;;
  }

  dimension: fecha_hora_l {
    type: string
    sql: ${TABLE}.fechaHoraL ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: geometria {
    type: string
    sql: ${TABLE}.Geometria ;;
  }

  dimension: id_conducto {
    type: string
    sql: ${TABLE}.idConducto ;;
  }

  dimension: id_operador {
    type: string
    sql: ${TABLE}.idOperador ;;
  }

  dimension: id_registro {
    type: number
    sql: ${TABLE}.idRegistro ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_id_registro {
    type: sum
    sql: ${id_registro} ;;  }
  measure: average_id_registro {
    type: average
    sql: ${id_registro} ;;  }

  dimension: id_ruta {
    type: string
    sql: ${TABLE}.idRuta ;;
  }

  dimension: id_vehiculo {
    type: string
    sql: ${TABLE}.idVehiculo ;;
  }

  dimension: kilometros {
    type: string
    sql: ${TABLE}.kilometros ;;
  }

  dimension: mem_disco_st {
    type: string
    sql: ${TABLE}.memDiscoSt ;;
  }

  dimension: mem_ram_sts {
    type: string
    sql: ${TABLE}.memRamSts ;;
  }

  dimension: nivel_alarm {
    type: string
    sql: ${TABLE}.nivelAlarm ;;
  }

  dimension: nivel_resta {
    type: string
    sql: ${TABLE}.nivelResta ;;
  }

  dimension: nivel_tanqu {
    type: string
    sql: ${TABLE}.nivelTanqu ;;
  }

  dimension: peso {
    type: string
    sql: ${TABLE}.peso ;;
  }

  dimension: porcentaje {
    type: string
    sql: ${TABLE}.porcentaje ;;
  }

  dimension: presion_ace {
    type: string
    sql: ${TABLE}.presionAce ;;
  }

  dimension: regeneraci {
    type: string
    sql: ${TABLE}.regeneraci ;;
  }

  dimension: revolucion {
    type: string
    sql: ${TABLE}.revolucion ;;
  }

  dimension: sentido_mar {
    type: string
    sql: ${TABLE}.sentidoMar ;;
  }

  dimension: tecnologia {
    type: string
    sql: ${TABLE}.tecnologia ;;
  }

  dimension: temperat_1 {
    type: string
    sql: ${TABLE}.temperat_1 ;;
  }

  dimension: temperat_2 {
    type: string
    sql: ${TABLE}.temperat_2 ;;
  }

  dimension: temperat_3 {
    type: string
    sql: ${TABLE}.temperat_3 ;;
  }

  dimension: temperatur {
    type: string
    sql: ${TABLE}.temperatur ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tipo_bus {
    type: string
    sql: ${TABLE}.tipoBus ;;
  }

  dimension: tipo_freno {
    type: string
    sql: ${TABLE}.tipoFreno ;;
  }

  dimension: tipo_trama {
    type: string
    sql: ${TABLE}.tipoTrama ;;
  }

  dimension: trama_retra {
    type: string
    sql: ${TABLE}.tramaRetra ;;
  }

  dimension: uso_cpu_sts {
    type: string
    sql: ${TABLE}.usoCpuSts ;;
  }

  dimension: velocidad_v {
    type: string
    sql: ${TABLE}.velocidadV ;;
  }

  dimension: version_tra {
    type: string
    sql: ${TABLE}.versionTra ;;
  }
  measure: count {
    type: count
  }
}
