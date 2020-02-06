view: survey_tvad_response {
  sql_table_name: tenant010.survey_tvad_response ;;

  dimension: member_id {
    type: string
    sql: ${TABLE}."member_id" ;;
  }

  dimension: q_deploymentemail {
    type: string
    sql: ${TABLE}."q_deploymentemail" ;;
  }

  dimension: q_displaytype {
    type: string
    sql: ${TABLE}."q_displaytype" ;;
  }

  dimension: q_dreamadbrand {
    type: string
    sql: ${TABLE}."q_dreamadbrand" ;;
  }

  dimension: q_dreamadquestiontext {
    type: string
    sql: ${TABLE}."q_dreamadquestiontext" ;;
  }

  dimension: q_dreamadsummary {
    type: string
    sql: ${TABLE}."q_dreamadsummary" ;;
  }

  dimension: q_favoriteadquestiontext {
    type: string
    sql: ${TABLE}."q_favoriteadquestiontext" ;;
  }

  dimension: q_favoriteadunaidedbrand {
    type: string
    sql: ${TABLE}."q_favoriteadunaidedbrand" ;;
  }

  dimension: q_favoriteadunaidedsummary {
    type: string
    sql: ${TABLE}."q_favoriteadunaidedsummary" ;;
  }

  dimension: q_fitswithmyimpressionofthebrand {
    type: string
    sql: ${TABLE}."q_fitswithmyimpressionofthebrand" ;;
  }

  dimension: q_gavemeagoodfeelingaboutthebrand {
    type: string
    sql: ${TABLE}."q_gavemeagoodfeelingaboutthebrand" ;;
  }

  dimension: q_increasesmyinterestinthebrand {
    type: string
    sql: ${TABLE}."q_increasesmyinterestinthebrand" ;;
  }

  dimension: q_isbelievable {
    type: string
    sql: ${TABLE}."q_isbelievable" ;;
  }

  dimension: q_iseasytounderstand {
    type: string
    sql: ${TABLE}."q_iseasytounderstand" ;;
  }

  dimension: q_isnewanddifferent {
    type: string
    sql: ${TABLE}."q_isnewanddifferent" ;;
  }

  dimension: q_isrelevanttome {
    type: string
    sql: ${TABLE}."q_isrelevanttome" ;;
  }

  dimension: q_mademewantwhattheadwaspromoting {
    type: string
    sql: ${TABLE}."q_mademewantwhattheadwaspromoting" ;;
  }

  dimension: q_objectives {
    type: string
    sql: ${TABLE}."q_objectives" ;;
  }

  dimension: q_respondentlocale {
    type: string
    sql: ${TABLE}."q_respondentlocale" ;;
  }

  dimension: q_satwhy {
    type: string
    sql: ${TABLE}."q_satwhy" ;;
  }

  dimension: q_setupinstruction {
    type: string
    sql: ${TABLE}."q_setupinstruction" ;;
  }

  dimension: q_socialcomments {
    type: string
    sql: ${TABLE}."q_socialcomments" ;;
  }

  dimension: q_thankyoumessage {
    type: string
    sql: ${TABLE}."q_thankyoumessage" ;;
  }

  dimension: q_toldmesomethingnew {
    type: string
    sql: ${TABLE}."q_toldmesomethingnew" ;;
  }

  dimension: q_useragent {
    type: string
    sql: ${TABLE}."q_useragent" ;;
  }

  dimension: q_wheresocial {
    type: string
    sql: ${TABLE}."q_wheresocial" ;;
  }

  dimension: q_wouldcatchmyattention {
    type: string
    sql: ${TABLE}."q_wouldcatchmyattention" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
