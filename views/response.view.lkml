view: response {
  sql_table_name: tenant010.response ;;
  drill_fields: [responseid]

  dimension: responseid {
    primary_key: yes
    type: number
    sql: ${TABLE}."responseid" ;;
  }

  dimension: completeddatetime {
    type: string
    sql: ${TABLE}."completeddatetime" ;;
  }

  dimension: datasettype {
    type: number
    sql: ${TABLE}."datasettype" ;;
  }

  dimension: deploymentid {
    type: string
    sql: ${TABLE}."deploymentid" ;;
  }

  dimension: lasteventids {
    type: string
    sql: ${TABLE}."lasteventids" ;;
  }

  dimension: referenceid {
    type: string
    sql: ${TABLE}."referenceid" ;;
  }

  dimension: referenceurn {
    type: string
    sql: ${TABLE}."referenceurn" ;;
  }

  dimension: respondentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."respondentid" ;;
  }

  dimension: responsestatus {
    type: number
    sql: ${TABLE}."responsestatus" ;;
  }

  dimension: starteddatetime {
    type: string
    sql: ${TABLE}."starteddatetime" ;;
  }

  dimension: surveyid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}."surveyid" ;;
  }

  dimension: syncdatetime {
    type: string
    sql: ${TABLE}."syncdatetime" ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}."tenant" ;;
  }

  dimension: updateddatetime {
    type: string
    sql: ${TABLE}."updateddatetime" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      responseid,
      respondent.respondentid,
      respondent.respondentname,
      survey.surveyid,
      survey.surveyname,
      responsedata.count
    ]
  }
}
