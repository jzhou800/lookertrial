view: participationevents {
  sql_table_name: tenant010.participationevents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: activityid {
    type: string
    sql: ${TABLE}."activityid" ;;
  }

  dimension: communicationid {
    type: string
    sql: ${TABLE}."communicationid" ;;
  }

  dimension: communicationlocationid {
    type: string
    sql: ${TABLE}."communicationlocationid" ;;
  }

  dimension: communityid {
    type: string
    sql: ${TABLE}."communityid" ;;
  }

  dimension: createdate {
    type: string
    sql: ${TABLE}."createdate" ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}."createdby" ;;
  }

  dimension: datasettype {
    type: number
    sql: ${TABLE}."datasettype" ;;
  }

  dimension: eventdate {
    type: string
    sql: ${TABLE}."eventdate" ;;
  }

  dimension_group: eventdate_ts {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}."eventdate_ts" ;;
  }

  dimension: eventdetail {
    type: string
    sql: ${TABLE}."eventdetail" ;;
  }

  dimension: eventtype {
    type: string
    sql: ${TABLE}."eventtype" ;;
  }

  dimension: memberid {
    type: string
    sql: ${TABLE}."memberid" ;;
  }

  dimension: panelid {
    type: string
    sql: ${TABLE}."panelid" ;;
  }

  dimension: participanttype {
    type: string
    sql: ${TABLE}."participanttype" ;;
  }

  dimension: redirecturl {
    type: string
    sql: ${TABLE}."redirecturl" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_respondent {
    type: count_distinct
    sql:  ${memberid} ;;
    drill_fields: [id]
  }


  measure: surveyinvited {
    type: count
    filters: {
      field: eventtype
      value: "SurveyInvited"
    }
  }

  measure: surveycompleted {
    type: count
    filters: {
      field: eventtype
      value: "SurveyCompleted"
    }
  }



}
