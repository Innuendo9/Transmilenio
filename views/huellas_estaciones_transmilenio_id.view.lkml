# The name of this view in Looker is "Huellas Estaciones Transmilenio ID"
view: huellas_estaciones_transmilenio_id {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datos_limpios.Huellas_estaciones_transmilenio_id` ;;
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
    # This dimension will be called "Area" in Explore.

  dimension: area {
    type: number
    sql: ${TABLE}.area ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_area {
    type: sum
    sql: ${area} ;;  }
  measure: average_area {
    type: average
    sql: ${area} ;;  }

  dimension: country_short {
    type: string
    sql: ${TABLE}.country_short ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: device_horizontal_accuracy {
    type: number
    sql: ${TABLE}.device_horizontal_accuracy ;;
  }

  dimension: device_lat {
    type: number
    sql: ${TABLE}.device_lat ;;
  }

  dimension: device_lon {
    type: number
    sql: ${TABLE}.device_lon ;;
  }

  dimension: dia {
    type: string
    sql: ${TABLE}.dia ;;
  }

  dimension: geometria {
    type: string
    sql: ${TABLE}.geometria ;;
  }

  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }

  dimension: id_troncal {
    type: number
    sql: ${TABLE}.Id_troncal ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: identifier_type {
    type: string
    sql: ${TABLE}.identifier_type ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: plus11 {
    type: string
    sql: ${TABLE}.plus11 ;;
  }

  dimension: plus9 {
    type: string
    sql: ${TABLE}.plus9 ;;
  }

  dimension: plus_id {
    type: string
    sql: ${TABLE}.plus_id ;;
  }

  dimension: pluscode {
    type: string
    sql: ${TABLE}.pluscode ;;
  }

  dimension: province_short {
    type: string
    sql: ${TABLE}.province_short ;;
  }

  dimension: record_id {
    type: string
    sql: ${TABLE}.record_id ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}.source_id ;;
  }

  dimension: time_zone_name {
    type: string
    sql: ${TABLE}.time_zone_name ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.timestamp ;;
  }

  dimension: troncal {
    type: string
    sql: ${TABLE}.troncal ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.device_lat ;;
    sql_longitude: ${TABLE}.device_lon ;;
  }
  measure: count {
    type: count
    drill_fields: [id, time_zone_name]
  }
  measure: dispositivos {
    type: count_distinct
    sql: ${identifier} ;;

  }
}
