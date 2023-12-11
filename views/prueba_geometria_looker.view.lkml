# The name of this view in Looker is "Prueba Geometria Looker"
view: prueba_geometria_looker {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datos_limpios.Prueba_geometria_looker` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_latitud {
    type: sum
    sql: ${latitud} ;;  }
  measure: average_latitud {
    type: average
    sql: ${latitud} ;;  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: pluscode {
    type: string
    sql: ${TABLE}.PLUSCODE ;;
  }

  dimension: pluscode9 {
    type: string
    sql: ${TABLE}.PLUSCODE9 ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
