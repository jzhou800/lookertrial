view: member_question {
  sql_table_name: tenant010.member_question ;;

  dimension: member_id {
    type: string
    sql: ${TABLE}."member_id" ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."questionid" ;;
  }

  dimension: questionname {
    type: string
    sql: ${TABLE}."questionname" ;;
  }

  dimension: questiontype {
    type: number
    sql: ${TABLE}."questiontype" ;;
  }

  dimension: respondentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."respondentid" ;;
  }

  measure: count {
    type: count
    drill_fields: [questionname, respondent.respondentid, respondent.respondentname, question.questionid, question.questionname]
  }
}
