// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspServerList _$RspServerListFromJson(Map<String, dynamic> json) =>
    RspServerList(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : ServerListRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspServerListToJson(RspServerList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspServerInfo _$RspServerInfoFromJson(Map<String, dynamic> json) =>
    RspServerInfo(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : ServerInfoRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspServerInfoToJson(RspServerInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };
