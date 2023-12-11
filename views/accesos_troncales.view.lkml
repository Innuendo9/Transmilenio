# The name of this view in Looker is "Accesos Troncales"
view: accesos_troncales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datos_limpios.accesos_troncales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Geometria" in Explore.

  dimension: geometria {
    type: string
    sql: ${TABLE}.geometria ;;
  }

  dimension: id_estacion {
    type: number
    sql: ${TABLE}.id_estacion ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_id_estacion {
    type: sum
    sql: ${id_estacion} ;;  }
  measure: average_id_estacion {
    type: average
    sql: ${id_estacion} ;;  }

  dimension: id_unico {
    type: string
    sql: ${TABLE}.id_unico ;;
  }

  dimension: nombre_troncal {
    type: string
    sql: ${TABLE}.nombre_troncal ;;
  }

  dimension: salida {
    type: string
    sql: ${TABLE}.salida ;;
  }
  measure: count {
    type: count
  }
}
