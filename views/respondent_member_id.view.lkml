view: respondent_member_id {
  sql_table_name: tenant010.respondent_member_id ;;

  dimension: member_id {
    type: string
    sql: ${TABLE}."member_id" ;;
  }

  dimension: respondentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."respondentid" ;;
  }

  measure: count {
    type: count
    drill_fields: [respondent.respondentid, respondent.respondentname]
  }
}
