view: responsedata {
  sql_table_name: tenant010.responsedata ;;

  dimension: answerid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."answerid" ;;
  }

  dimension: datasettype {
    type: number
    sql: ${TABLE}."datasettype" ;;
  }

  dimension: datetimevalue {
    type: string
    sql: ${TABLE}."datetimevalue" ;;
  }

  dimension: numericvalue {
    type: string
    sql: ${TABLE}."numericvalue" ;;
  }

  dimension: openendvalue {
    type: string
    sql: ${TABLE}."openendvalue" ;;
  }

  dimension: questionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."questionid" ;;
  }

  dimension: respondentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."respondentid" ;;
  }

  dimension: responsedatetime {
    type: string
    sql: ${TABLE}."responsedatetime" ;;
  }

  dimension: responseid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."responseid" ;;
  }

  dimension: responsestatus {
    type: number
    sql: ${TABLE}."responsestatus" ;;
  }

  dimension: responsetime {
    type: number
    sql: ${TABLE}."responsetime" ;;
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
      survey.surveyid,
      survey.surveyname,
      question.questionid,
      question.questionname,
      answer.answerid,
      response.responseid,
      respondent.respondentid,
      respondent.respondentname
    ]
  }
}
