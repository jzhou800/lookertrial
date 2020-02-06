view: activities {
  sql_table_name: tenant010.activities ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: accessedon {
    type: string
    sql: ${TABLE}."accessedon" ;;
  }

  dimension: activityid {
    type: string
    sql: ${TABLE}."activityid" ;;
  }

  dimension: activitytype {
    type: string
    sql: ${TABLE}."activitytype" ;;
  }

  dimension: activitytypeid {
    type: string
    sql: ${TABLE}."activitytypeid" ;;
  }

  dimension: closedon {
    type: string
    sql: ${TABLE}."closedon" ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}."createdby" ;;
  }

  dimension: createdon {
    type: string
    sql: ${TABLE}."createdon" ;;
  }

  dimension: deploymentid {
    type: string
    sql: ${TABLE}."deploymentid" ;;
  }

  dimension: externalname {
    type: string
    sql: ${TABLE}."externalname" ;;
  }

  dimension: hidefrommember {
    type: string
    sql: ${TABLE}."hidefrommember" ;;
  }

  dimension: isready {
    type: string
    sql: ${TABLE}."isready" ;;
  }

  dimension: issensitive {
    type: string
    sql: ${TABLE}."issensitive" ;;
  }

  dimension: lastupdatedby {
    type: string
    sql: ${TABLE}."lastupdatedby" ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}."link" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: openedon {
    type: string
    sql: ${TABLE}."openedon" ;;
  }

  dimension: panelid {
    type: string
    sql: ${TABLE}."panelid" ;;
  }

  dimension: projectid {
    type: string
    sql: ${TABLE}."projectid" ;;
  }

  dimension: sourceid {
    type: string
    sql: ${TABLE}."sourceid" ;;
  }

  dimension: statuschangedon {
    type: string
    sql: ${TABLE}."statuschangedon" ;;
  }

  dimension: templateurl {
    type: string
    sql: ${TABLE}."templateurl" ;;
  }

  dimension: updatedon {
    type: string
    sql: ${TABLE}."updatedon" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, externalname]
  }
}
