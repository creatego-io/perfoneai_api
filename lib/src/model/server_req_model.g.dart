// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqServerList _$ReqServerListFromJson(Map<String, dynamic> json) =>
    ReqServerList(
      rows: json['rows'] as String?,
      page: json['page'] as String?,
      name: json['name'] as String?,
      ip: json['ip'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$ReqServerListToJson(ReqServerList instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'page': instance.page,
      'name': instance.name,
      'ip': instance.ip,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

ReqServerCreate _$ReqServerCreateFromJson(Map<String, dynamic> json) =>
    ReqServerCreate(
      name: json['name'] as String?,
      os: json['os'] as String?,
      connect_type: json['connect_type'] as String?,
      type: json['type'] as String?,
      ip: json['ip'] as String?,
      port: json['port'] as String?,
      connect_id: json['connect_id'] as String?,
      connect_pwd: json['connect_pwd'] as String?,
      description: json['description'] as String?,
      update_user_id: json['update_user_id'] as String?,
    );

Map<String, dynamic> _$ReqServerCreateToJson(ReqServerCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'os': instance.os,
      'connect_type': instance.connect_type,
      'type': instance.type,
      'ip': instance.ip,
      'port': instance.port,
      'connect_id': instance.connect_id,
      'connect_pwd': instance.connect_pwd,
      'description': instance.description,
      'update_user_id': instance.update_user_id,
    };

ReqServerInfo _$ReqServerInfoFromJson(Map<String, dynamic> json) =>
    ReqServerInfo(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ReqServerInfoToJson(ReqServerInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReqServerModify _$ReqServerModifyFromJson(Map<String, dynamic> json) =>
    ReqServerModify(
      id: json['id'] as int?,
      name: json['name'] as String?,
      os: json['os'] as String?,
      connect_type: json['connect_type'] as String?,
      type: json['type'] as String?,
      ip: json['ip'] as String?,
      port: json['port'] as String?,
      connect_id: json['connect_id'] as String?,
      connect_pwd: json['connect_pwd'] as String?,
      description: json['description'] as String?,
      update_user_id: json['update_user_id'] as String?,
    );

Map<String, dynamic> _$ReqServerModifyToJson(ReqServerModify instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'os': instance.os,
      'connect_type': instance.connect_type,
      'type': instance.type,
      'ip': instance.ip,
      'port': instance.port,
      'connect_id': instance.connect_id,
      'connect_pwd': instance.connect_pwd,
      'description': instance.description,
      'update_user_id': instance.update_user_id,
    };

ReqServerDelete _$ReqServerDeleteFromJson(Map<String, dynamic> json) =>
    ReqServerDelete(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ReqServerDeleteToJson(ReqServerDelete instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
