// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspAgentList _$RspAgentListFromJson(Map<String, dynamic> json) => RspAgentList(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : AgentListRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspAgentListToJson(RspAgentList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspAgentInfo _$RspAgentInfoFromJson(Map<String, dynamic> json) => RspAgentInfo(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : AgentInfoRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspAgentInfoToJson(RspAgentInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };
