view: answer {
  sql_table_name: tenant010.answer ;;
  drill_fields: [answerid]

  dimension: answerid {
    primary_key: yes
    type: number
    sql: ${TABLE}."answerid" ;;
  }

  dimension: answerbitmapindex {
    type: number
    sql: ${TABLE}."answerbitmapindex" ;;
  }

  dimension: answercode {
    type: string
    sql: ${TABLE}."answercode" ;;
  }

  dimension: answerguidid {
    type: string
    sql: ${TABLE}."answerguidid" ;;
  }

  dimension: answerscalevalue {
    type: number
    sql: ${TABLE}."answerscalevalue" ;;
  }

  dimension: answertext {
    type: string
    sql: ${TABLE}."answertext" ;;
  }

  dimension: answertype {
    type: number
    sql: ${TABLE}."answertype" ;;
  }

  dimension: orderinparent {
    type: number
    sql: ${TABLE}."orderinparent" ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."questionid" ;;
  }

  dimension: referenceurn {
    type: string
    sql: ${TABLE}."referenceurn" ;;
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
    drill_fields: [answerid, question.questionid, question.questionname, responsedata.count]
  }
}
