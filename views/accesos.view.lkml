# The name of this view in Looker is "Accesos"
view: accesos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `datos_limpios.accesos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " ID" in Explore.

  dimension: _id {
    type: string
    sql: ${TABLE}._id ;;
  }

  dimension: _id_record {
    type: string
    sql: ${TABLE}._id_record ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: id1 {
    type: number
    sql: ${TABLE}.id1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_id1 {
    type: sum
    sql: ${id1} ;;  }
  measure: average_id1 {
    type: average
    sql: ${id1} ;;  }

  dimension: nombre_tro {
    type: string
    sql: ${TABLE}.nombre_tro ;;
  }

  dimension: salidas1 {
    type: string
    sql: ${TABLE}.salidas1 ;;
  }
  measure: count {
    type: count
  }
}
