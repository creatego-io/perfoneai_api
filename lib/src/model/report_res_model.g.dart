// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspReportList _$RspReportListFromJson(Map<String, dynamic> json) =>
    RspReportList(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : ReportListRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspReportListToJson(RspReportList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspReportInfo _$RspReportInfoFromJson(Map<String, dynamic> json) =>
    RspReportInfo(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : ReportInfoRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspReportInfoToJson(RspReportInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };
