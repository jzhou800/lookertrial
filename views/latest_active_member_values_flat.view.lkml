view: latest_active_member_values_flat {
  sql_table_name: tenant010.latest_active_member_values_flat ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}."firstname" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: householdincome {
    type: string
    sql: ${TABLE}."householdincome" ;;
  }

  dimension: joindate {
    type: string
    sql: ${TABLE}."joindate" ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}."lastname" ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}."member_id" ;;
  }

  dimension: memberstatus {
    type: string
    sql: ${TABLE}."memberstatus" ;;
  }

  dimension: mobileappstatus {
    type: string
    sql: ${TABLE}."mobileappstatus" ;;
  }

  dimension: nps {
    type: string
    sql: ${TABLE}."nps" ;;
  }

  dimension: nps_rawscore {
    type: string
    sql: ${TABLE}."nps_rawscore" ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}."province" ;;
  }

  dimension: recruitmentmethod {
    type: string
    sql: ${TABLE}."recruitmentmethod" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: storepreference {
    type: string
    sql: ${TABLE}."storepreference" ;;
  }

  dimension: unsubscribereason {
    type: string
    sql: ${TABLE}."unsubscribereason" ;;
  }

  measure: count {
    type: count
    drill_fields: [firstname, lastname]
  }
}
