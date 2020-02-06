view: variable_values {
  sql_table_name: tenant010.variable_values ;;
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

  dimension: disabled {
    type: string
    sql: ${TABLE}."disabled" ;;
  }

  dimension: hidden {
    type: string
    sql: ${TABLE}."hidden" ;;
  }

  dimension: synced_at {
    type: string
    sql: ${TABLE}."synced_at" ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}."updated_by" ;;
  }

  dimension: value_key {
    type: string
    sql: ${TABLE}."value_key" ;;
  }

  dimension: value_label {
    type: string
    sql: ${TABLE}."value_label" ;;
  }

  dimension: value_order {
    type: number
    sql: ${TABLE}."value_order" ;;
  }

  dimension: variable_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."variable_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, variables.id, variables.name, latest_active_member_values.count]
  }
}
