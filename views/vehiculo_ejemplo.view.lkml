# The name of this view in Looker is "Vehiculo Ejemplo"
view: vehiculo_ejemplo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datos_limpios.vehiculo_ejemplo` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anterior Geometria" in Explore.

  dimension: anterior_geometria {
    type: string
    sql: ${TABLE}.anterior_geometria ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: anterior_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.anterior_timestamp ;;
  }

  dimension: diferencia_horas {
    type: number
    sql: ${TABLE}.diferencia_horas ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_diferencia_horas {
    type: sum
    sql: ${diferencia_horas} ;;  }
  measure: average_diferencia_horas {
    type: average
    sql: ${diferencia_horas} ;;  }

  dimension: diferencia_segundos {
    type: number
    sql: ${TABLE}.diferencia_segundos ;;
  }

  dimension: diferencia_timestamp {
    type: string
    sql: ${TABLE}.diferencia_timestamp ;;
  }

  dimension: distancia_kilometros {
    type: number
    sql: ${TABLE}.distancia_kilometros ;;
  }

  dimension: distancia_metros {
    type: number
    sql: ${TABLE}.distancia_metros ;;
  }

  dimension: fecha_hora_l {
    type: string
    sql: ${TABLE}.fechaHoraL ;;
  }

  dimension: geometria {
    type: string
    sql: ${TABLE}.geometria ;;
  }

  dimension: id_ruta {
    type: string
    sql: ${TABLE}.idRuta ;;
  }

  dimension: id_vehiculo {
    type: string
    sql: ${TABLE}.idVehiculo ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: velocidad_kmh {
    type: number
    sql: ${TABLE}.Velocidad_KMH ;;
  }

  dimension: velocidad_v {
    type: string
    sql: ${TABLE}.velocidadV ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
