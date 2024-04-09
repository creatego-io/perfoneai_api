// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqTestLoadData _$ReqTestLoadDataFromJson(Map<String, dynamic> json) =>
    ReqTestLoadData(
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$ReqTestLoadDataToJson(ReqTestLoadData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
    };

ReqTestStartTest _$ReqTestStartTestFromJson(Map<String, dynamic> json) =>
    ReqTestStartTest(
      userId: json['user_id'] as String?,
      websocket_session_id: json['websocket_session_id'] as String?,
      scenario_name: json['scenario_name'] as String?,
      conditions: json['conditions'] == null
          ? null
          : TestLoadDataModel.fromJson(
              json['conditions'] as Map<String, dynamic>),
      scenario_items: (json['scenario_items'] as List<dynamic>?)
          ?.map((e) => ScenarioItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      server_list: (json['server_list'] as List<dynamic>?)
          ?.map((e) => TestServerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReqTestStartTestToJson(ReqTestStartTest instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'websocket_session_id': instance.websocket_session_id,
      'scenario_name': instance.scenario_name,
      'conditions': instance.conditions,
      'scenario_items': instance.scenario_items,
      'server_list': instance.server_list,
    };

ScenarioItemModel _$ScenarioItemModelFromJson(Map<String, dynamic> json) =>
    ScenarioItemModel(
      script_name: json['script_name'] as String?,
      agent_name: json['agent_name'] as String?,
      agent_ip: json['agent_ip'] as String?,
    );

Map<String, dynamic> _$ScenarioItemModelToJson(ScenarioItemModel instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'agent_name': instance.agent_name,
      'agent_ip': instance.agent_ip,
    };

TestServerModel _$TestServerModelFromJson(Map<String, dynamic> json) =>
    TestServerModel(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TestServerModelToJson(TestServerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReqTestTestStop _$ReqTestTestStopFromJson(Map<String, dynamic> json) =>
    ReqTestTestStop(
      result_file_name: json['result_file_name'] as String?,
      agent_list: (json['agent_list'] as List<dynamic>?)
          ?.map((e) => TestAgentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReqTestTestStopToJson(ReqTestTestStop instance) =>
    <String, dynamic>{
      'result_file_name': instance.result_file_name,
      'agent_list': instance.agent_list,
    };

TestAgentModel _$TestAgentModelFromJson(Map<String, dynamic> json) =>
    TestAgentModel(
      agent_name: json['agent_name'] as String?,
      agent_ip: json['agent_ip'] as String?,
    );

Map<String, dynamic> _$TestAgentModelToJson(TestAgentModel instance) =>
    <String, dynamic>{
      'agent_name': instance.agent_name,
      'agent_ip': instance.agent_ip,
    };

ReqTestGenReport _$ReqTestGenReportFromJson(Map<String, dynamic> json) =>
    ReqTestGenReport(
      result_file_name: json['result_file_name'] as String?,
      agent_list: (json['agent_list'] as List<dynamic>?)
          ?.map((e) => TestAgentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReqTestGenReportToJson(ReqTestGenReport instance) =>
    <String, dynamic>{
      'result_file_name': instance.result_file_name,
      'agent_list': instance.agent_list,
    };
