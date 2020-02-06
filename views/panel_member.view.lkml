view: panel_member {
  sql_table_name: tenant010.panel_member ;;

  dimension: member_id {
    type: string
    sql: ${TABLE}."member_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
