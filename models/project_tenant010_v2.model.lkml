connection: "tenant010"

# include all the views
include: "/views/**/*.view"

datagroup: project_tenant010_v2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: project_tenant010_v2_default_datagroup

explore: activities {}

explore: answer {
  join: question {
    type: left_outer
    sql_on: ${answer.questionid} = ${question.questionid} ;;
    relationship: many_to_one
  }

  join: survey {
    type: left_outer
    sql_on: ${question.surveyid} = ${survey.surveyid} ;;
    relationship: many_to_one
  }
}

explore: latest_active_member_values {
  join: variables {
    type: left_outer
    sql_on: ${latest_active_member_values.variable_id} = ${variables.id} ;;
    relationship: many_to_one
  }

  join: variable_values {
    type: left_outer
    sql_on: ${latest_active_member_values.variable_value_id} = ${variable_values.id} ;;
    relationship: many_to_one
  }
}

explore: latest_active_member_values_flat {}

explore: member_question {
  join: respondent {
    type: left_outer
    sql_on: ${member_question.respondentid} = ${respondent.respondentid} ;;
    relationship: many_to_one
  }

  join: question {
    type: left_outer
    sql_on: ${member_question.questionid} = ${question.questionid} ;;
    relationship: many_to_one
  }

  join: survey {
    type: left_outer
    sql_on: ${question.surveyid} = ${survey.surveyid} ;;
    relationship: many_to_one
  }
}

explore: panel_member {}

explore: participationevents {
  join: latest_active_member_values_flat {
    type: left_outer
    sql_on: ${latest_active_member_values_flat.member_id} = ${participationevents.memberid} ;;
    relationship: many_to_one
  }

  join: activities {
    type:  left_outer
    sql_on: $(${activities.activityid} = ${participationevents.activityid} ;;
    relationship: many_to_one
  }
}

explore: question {
  join: survey {
    type: left_outer
    sql_on: ${question.surveyid} = ${survey.surveyid} ;;
    relationship: many_to_one
  }
}

explore: question_id {
  join: question {
    type: left_outer
    sql_on: ${question_id.questionid} = ${question.questionid} ;;
    relationship: many_to_one
  }

  join: survey {
    type: left_outer
    sql_on: ${question.surveyid} = ${survey.surveyid} ;;
    relationship: many_to_one
  }
}

explore: respondent {}

explore: respondent_member_id {
  join: respondent {
    type: left_outer
    sql_on: ${respondent_member_id.respondentid} = ${respondent.respondentid} ;;
    relationship: many_to_one
  }
}

explore: response {
  join: respondent {
    type: left_outer
    sql_on: ${response.respondentid} = ${respondent.respondentid} ;;
    relationship: many_to_one
  }

  join: survey {
    type: left_outer
    sql_on: ${response.surveyid} = ${survey.surveyid} ;;
    relationship: many_to_one
  }
}

explore: responsedata {
  join: survey {
    type: left_outer
    sql_on: ${responsedata.surveyid} = ${survey.surveyid} ;;
    relationship: many_to_one
  }

  join: question {
    type: left_outer
    sql_on: ${responsedata.questionid} = ${question.questionid} ;;
    relationship: many_to_one
  }

  join: answer {
    type: left_outer
    sql_on: ${responsedata.answerid} = ${answer.answerid} ;;
    relationship: many_to_one
  }

  join: response {
    type: left_outer
    sql_on: ${responsedata.responseid} = ${response.responseid} ;;
    relationship: many_to_one
  }

  join: respondent {
    type: left_outer
    sql_on: ${responsedata.respondentid} = ${respondent.respondentid} ;;
    relationship: many_to_one
  }
}

explore: survey {}

explore: survey_tvad_response {
  join: latest_active_member_values_flat  {
    type:  left_outer
    sql_on:  ${latest_active_member_values_flat.member_id} = ${survey_tvad_response.member_id} ;;
    relationship:  many_to_one
  }
  join :  answer {
    type:  left_outer
    sql_on: cast(${answer.answerid} as varchar) = ${survey_tvad_response.q_isbelievable} ;;
    relationship: many_to_one
  }
}

explore: variable_values {
  join: variables {
    type: left_outer
    sql_on: ${variable_values.variable_id} = ${variables.id} ;;
    relationship: many_to_one
  }
}

explore: variables {}
