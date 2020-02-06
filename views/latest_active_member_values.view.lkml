view: latest_active_member_values {
  sql_table_name: tenant010.latest_active_member_values ;;
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

  dimension: date_value {
    type: string
    sql: ${TABLE}."date_value" ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}."effective_date" ;;
  }

  dimension: effective_date_ticks {
    type: number
    sql: ${TABLE}."effective_date_ticks" ;;
  }

  dimension: member_id {
    type: string
    sql: ${TABLE}."member_id" ;;
  }

  dimension: numeric_value {
    type: string
    sql: ${TABLE}."numeric_value" ;;
  }

  dimension: synced_at {
    type: string
    sql: ${TABLE}."synced_at" ;;
  }

  dimension: text_value {
    type: string
    sql: ${TABLE}."text_value" ;;
  }

  dimension: updated_at {
    type: string
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}."updated_by" ;;
  }

  dimension: variable_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."variable_id" ;;
  }

  dimension: variable_value_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."variable_value_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, variables.id, variables.name, variable_values.id]
  }
}
