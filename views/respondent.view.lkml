view: respondent {
  sql_table_name: tenant010.respondent ;;
  drill_fields: [respondentid]

  dimension: respondentid {
    primary_key: yes
    type: number
    sql: ${TABLE}."respondentid" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: publicid {
    type: string
    sql: ${TABLE}."publicid" ;;
  }

  dimension: referenceurn {
    type: string
    sql: ${TABLE}."referenceurn" ;;
  }

  dimension: respondentguidid {
    type: string
    sql: ${TABLE}."respondentguidid" ;;
  }

  dimension: respondentname {
    type: string
    sql: ${TABLE}."respondentname" ;;
  }

  dimension: respondentstatus {
    type: number
    sql: ${TABLE}."respondentstatus" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}."tenant" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      respondentid,
      respondentname,
      member_question.count,
      respondent_member_id.count,
      response.count,
      responsedata.count
    ]
  }
}
