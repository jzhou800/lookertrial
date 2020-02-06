view: survey {
  sql_table_name: tenant010.survey ;;
  drill_fields: [surveyid]

  dimension: surveyid {
    primary_key: yes
    type: number
    sql: ${TABLE}."surveyid" ;;
  }

  dimension: closedatetime {
    type: string
    sql: ${TABLE}."closedatetime" ;;
  }

  dimension: createdbyuserguid {
    type: string
    sql: ${TABLE}."createdbyuserguid" ;;
  }

  dimension: createdbyuserid {
    type: string
    sql: ${TABLE}."createdbyuserid" ;;
  }

  dimension: createddatetime {
    type: string
    sql: ${TABLE}."createddatetime" ;;
  }

  dimension: lastmodifieddatetime {
    type: string
    sql: ${TABLE}."lastmodifieddatetime" ;;
  }

  dimension: lastmodifieduserguid {
    type: string
    sql: ${TABLE}."lastmodifieduserguid" ;;
  }

  dimension: lastmodifieduserid {
    type: string
    sql: ${TABLE}."lastmodifieduserid" ;;
  }

  dimension: opendatetime {
    type: string
    sql: ${TABLE}."opendatetime" ;;
  }

  dimension: referenceurn {
    type: string
    sql: ${TABLE}."referenceurn" ;;
  }

  dimension: requiresdatasync {
    type: string
    sql: ${TABLE}."requiresdatasync" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state" ;;
  }

  dimension: surveyguidid {
    type: string
    sql: ${TABLE}."surveyguidid" ;;
  }

  dimension: surveyname {
    type: string
    sql: ${TABLE}."surveyname" ;;
  }

  dimension: tenant {
    type: string
    sql: ${TABLE}."tenant" ;;
  }

  dimension: transactionnumber {
    type: number
    sql: ${TABLE}."transactionnumber" ;;
  }

  measure: count {
    type: count
    drill_fields: [surveyid, surveyname, question.count, response.count, responsedata.count]
  }
}
