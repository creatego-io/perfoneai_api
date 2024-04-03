// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqAgentList _$ReqAgentListFromJson(Map<String, dynamic> json) => ReqAgentList(
      rows: json['rows'] as String?,
      page: json['page'] as String?,
      name: json['name'] as String?,
      ip: json['ip'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$ReqAgentListToJson(ReqAgentList instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'page': instance.page,
      'name': instance.name,
      'ip': instance.ip,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

ReqAgentCreate _$ReqAgentCreateFromJson(Map<String, dynamic> json) =>
    ReqAgentCreate(
      name: json['name'] as String?,
      ip: json['ip'] as String?,
      create_user_id: json['create_user_id'] as String?,
    );

Map<String, dynamic> _$ReqAgentCreateToJson(ReqAgentCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ip': instance.ip,
      'create_user_id': instance.create_user_id,
    };

ReqAgentInfo _$ReqAgentInfoFromJson(Map<String, dynamic> json) => ReqAgentInfo(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ReqAgentInfoToJson(ReqAgentInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReqAgentModify _$ReqAgentModifyFromJson(Map<String, dynamic> json) =>
    ReqAgentModify(
      id: json['id'] as int?,
      name: json['name'] as String?,
      ip: json['ip'] as String?,
      update_user_id: json['update_user_id'] as String?,
    );

Map<String, dynamic> _$ReqAgentModifyToJson(ReqAgentModify instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ip': instance.ip,
      'update_user_id': instance.update_user_id,
    };

ReqAgentDelete _$ReqAgentDeleteFromJson(Map<String, dynamic> json) =>
    ReqAgentDelete(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ReqAgentDeleteToJson(ReqAgentDelete instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
