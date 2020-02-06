view: question_id {
  sql_table_name: tenant010.question_id ;;

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."questionid" ;;
  }

  measure: count {
    type: count
    drill_fields: [question.questionid, question.questionname]
  }
}
