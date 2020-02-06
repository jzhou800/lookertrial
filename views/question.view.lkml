view: question {
  sql_table_name: tenant010.question ;;
  drill_fields: [questionid]

  dimension: questionid {
    primary_key: yes
    type: number
    sql: ${TABLE}."questionid" ;;
  }

  dimension: orderinparent {
    type: number
    sql: ${TABLE}."orderinparent" ;;
  }

  dimension: questionbitmapindex {
    type: number
    sql: ${TABLE}."questionbitmapindex" ;;
  }

  dimension: questionextensiontype {
    type: number
    sql: ${TABLE}."questionextensiontype" ;;
  }

  dimension: questionguidid {
    type: string
    sql: ${TABLE}."questionguidid" ;;
  }

  dimension: questionlabel {
    type: string
    sql: ${TABLE}."questionlabel" ;;
  }

  dimension: questionname {
    type: string
    sql: ${TABLE}."questionname" ;;
  }

  dimension: questiontext {
    type: string
    sql: ${TABLE}."questiontext" ;;
  }

  dimension: questiontype {
    type: number
    sql: ${TABLE}."questiontype" ;;
  }

  dimension: referenceurn {
    type: string
    sql: ${TABLE}."referenceurn" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
  }

  dimension: surveyid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."surveyid" ;;
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
      questionid,
      questionname,
      survey.surveyid,
      survey.surveyname,
      answer.count,
      member_question.count,
      question_id.count,
      responsedata.count
    ]
  }
}
