view: variables {
  sql_table_name: tenant010.variables ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: application_id {
    type: string
    sql: ${TABLE}."application_id" ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}."created_at" ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}."created_by" ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}."data_type" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: disabled {
    type: string
    sql: ${TABLE}."disabled" ;;
  }

  dimension: hidden {
    type: string
    sql: ${TABLE}."hidden" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: read_only {
    type: string
    sql: ${TABLE}."read_only" ;;
  }

  dimension: return_latest {
    type: string
    sql: ${TABLE}."return_latest" ;;
  }

  dimension: sensitive {
    type: string
    sql: ${TABLE}."sensitive" ;;
  }

  dimension: synced_at {
    type: string
    sql: ${TABLE}."synced_at" ;;
  }

  dimension: unique_per_member {
    type: string
    sql: ${TABLE}."unique_per_member" ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}."updated_by" ;;
  }

  dimension: variable_type {
    type: string
    sql: ${TABLE}."variable_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, latest_active_member_values.count, variable_values.count]
  }
}
