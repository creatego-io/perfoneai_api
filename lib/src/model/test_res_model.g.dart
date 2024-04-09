// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspTestLoadData _$RspTestLoadDataFromJson(Map<String, dynamic> json) =>
    RspTestLoadData(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : RspTestLoadDataRes.fromJson(
            json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspTestLoadDataToJson(RspTestLoadData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspTestStartTest _$RspTestStartTestFromJson(Map<String, dynamic> json) =>
    RspTestStartTest(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : RspTestStartTestRes.fromJson(
            json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspTestStartTestToJson(RspTestStartTest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };
