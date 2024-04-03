// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqReportList _$ReqReportListFromJson(Map<String, dynamic> json) =>
    ReqReportList(
      rows: json['rows'] as String?,
      page: json['page'] as String?,
      name: json['name'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$ReqReportListToJson(ReqReportList instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'page': instance.page,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

ReqReportDownload _$ReqReportDownloadFromJson(Map<String, dynamic> json) =>
    ReqReportDownload(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ReqReportDownloadToJson(ReqReportDownload instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

ReqReportDelete _$ReqReportDeleteFromJson(Map<String, dynamic> json) =>
    ReqReportDelete(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$ReqReportDeleteToJson(ReqReportDelete instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
