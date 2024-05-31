// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recorder_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqRecorderGetProperty _$ReqRecorderGetPropertyFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderGetProperty(
      target_id: json['target_id'] as String?,
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecorderGetPropertyToJson(
        ReqRecorderGetProperty instance) =>
    <String, dynamic>{
      'target_id': instance.target_id,
      'xml': instance.xml,
    };

ReqRecorderList _$ReqRecorderListFromJson(Map<String, dynamic> json) =>
    ReqRecorderList(
      rows: json['rows'] as String?,
      page: json['page'] as String?,
      name: json['name'] as String?,
      ip: json['ip'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$ReqRecorderListToJson(ReqRecorderList instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'page': instance.page,
      'name': instance.name,
      'ip': instance.ip,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

ReqRecorderCreateScript _$ReqRecorderCreateScriptFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderCreateScript(
      script_name: json['script_name'] as String?,
    );

Map<String, dynamic> _$ReqRecorderCreateScriptToJson(
        ReqRecorderCreateScript instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
    };

ReqRecorderCreateTransaction _$ReqRecorderCreateTransactionFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderCreateTransaction(
      script_name: json['script_name'] as String?,
      transaction_name: json['transaction_name'] as String?,
      num: json['num'] as int?,
    );

Map<String, dynamic> _$ReqRecorderCreateTransactionToJson(
        ReqRecorderCreateTransaction instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'transaction_name': instance.transaction_name,
      'num': instance.num,
    };

ReqRecorderStartRecording _$ReqRecorderStartRecordingFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderStartRecording(
      script_name: json['script_name'] as String?,
      transaction_name: json['transaction_name'] as String?,
      num: json['num'] as int?,
      is_static_file: json['is_static_file'] as bool?,
      websocket_session_id: json['websocket_session_id'] as String?,
    );

Map<String, dynamic> _$ReqRecorderStartRecordingToJson(
        ReqRecorderStartRecording instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'transaction_name': instance.transaction_name,
      'num': instance.num,
      'is_static_file': instance.is_static_file,
      'websocket_session_id': instance.websocket_session_id,
    };

ReqRecorderPauseRecording _$ReqRecorderPauseRecordingFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderPauseRecording(
      script_name: json['script_name'] as String?,
    );

Map<String, dynamic> _$ReqRecorderPauseRecordingToJson(
        ReqRecorderPauseRecording instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
    };

ReqRecorderStopRecording _$ReqRecorderStopRecordingFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderStopRecording(
      script_name: json['script_name'] as String?,
    );

Map<String, dynamic> _$ReqRecorderStopRecordingToJson(
        ReqRecorderStopRecording instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
    };

ReqRecordeDeleteNode _$ReqRecordeDeleteNodeFromJson(
        Map<String, dynamic> json) =>
    ReqRecordeDeleteNode(
      script_name: json['script_name'] as String?,
      node_ids: json['node_ids'] as String?,
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecordeDeleteNodeToJson(
        ReqRecordeDeleteNode instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'node_ids': instance.node_ids,
      'xml': instance.xml,
    };

ReqRecorderAddLoop _$ReqRecorderAddLoopFromJson(Map<String, dynamic> json) =>
    ReqRecorderAddLoop(
      target_id: json['target_id'] as String?,
      loop_name: json['loop_name'] as String?,
      loop_value: json['loop_value'] as String?,
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecorderAddLoopToJson(ReqRecorderAddLoop instance) =>
    <String, dynamic>{
      'target_id': instance.target_id,
      'loop_name': instance.loop_name,
      'loop_value': instance.loop_value,
      'xml': instance.xml,
    };

ReqRecorderAddThinkTime _$ReqRecorderAddThinkTimeFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderAddThinkTime(
      transaction_id: json['transaction_id'] as String?,
      think_time: json['think_time'] as String?,
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecorderAddThinkTimeToJson(
        ReqRecorderAddThinkTime instance) =>
    <String, dynamic>{
      'transaction_id': instance.transaction_id,
      'think_time': instance.think_time,
      'xml': instance.xml,
    };

ReqRecorderAddRdz _$ReqRecorderAddRdzFromJson(Map<String, dynamic> json) =>
    ReqRecorderAddRdz(
      script_name: json['script_name'] as String?,
      transaction_id: json['transaction_id'] as String?,
      rdz_name: json['rdz_name'] as String?,
      vuser: json['vuser'] as String?,
      timeout: json['timeout'] as String?,
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecorderAddRdzToJson(ReqRecorderAddRdz instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'transaction_id': instance.transaction_id,
      'rdz_name': instance.rdz_name,
      'vuser': instance.vuser,
      'timeout': instance.timeout,
      'xml': instance.xml,
    };

ReqRecorderLoadScript _$ReqRecorderLoadScriptFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderLoadScript(
      script_name: json['script_name'] as String?,
    );

Map<String, dynamic> _$ReqRecorderLoadScriptToJson(
        ReqRecorderLoadScript instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
    };

ReqRecorderDeleteScript _$ReqRecorderDeleteScriptFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderDeleteScript(
      script_name: json['script_name'] as String?,
    );

Map<String, dynamic> _$ReqRecorderDeleteScriptToJson(
        ReqRecorderDeleteScript instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
    };

ReqRecorderSaveScript _$ReqRecorderSaveScriptFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderSaveScript(
      script_name: json['script_name'] as String?,
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecorderSaveScriptToJson(
        ReqRecorderSaveScript instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'xml': instance.xml,
    };

ReqRecorderGetScriptList _$ReqRecorderGetScriptListFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderGetScriptList();

Map<String, dynamic> _$ReqRecorderGetScriptListToJson(
        ReqRecorderGetScriptList instance) =>
    <String, dynamic>{};

ReqRecorderGetVerificationInfo _$ReqRecorderGetVerificationInfoFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderGetVerificationInfo(
      script_name: json['script_name'] as String?,
      target_id: json['target_id'] as String?,
    );

Map<String, dynamic> _$ReqRecorderGetVerificationInfoToJson(
        ReqRecorderGetVerificationInfo instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'target_id': instance.target_id,
    };

ReqRecorderStartTcpRecording _$ReqRecorderStartTcpRecordingFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderStartTcpRecording(
      script_name: json['script_name'] as String?,
      transaction_name: json['transaction_name'] as String?,
      num: json['num'] as int?,
      ip: json['ip'] as String?,
      port: json['port'] as int?,
      interface_name: json['interface_name'] as String?,
      websocket_session_id: json['websocket_session_id'] as String?,
    );

Map<String, dynamic> _$ReqRecorderStartTcpRecordingToJson(
        ReqRecorderStartTcpRecording instance) =>
    <String, dynamic>{
      'script_name': instance.script_name,
      'transaction_name': instance.transaction_name,
      'num': instance.num,
      'ip': instance.ip,
      'port': instance.port,
      'interface_name': instance.interface_name,
      'websocket_session_id': instance.websocket_session_id,
    };

ReqRecorderAutoCorrelation _$ReqRecorderAutoCorrelationFromJson(
        Map<String, dynamic> json) =>
    ReqRecorderAutoCorrelation(
      xml: json['xml'] as String?,
    );

Map<String, dynamic> _$ReqRecorderAutoCorrelationToJson(
        ReqRecorderAutoCorrelation instance) =>
    <String, dynamic>{
      'xml': instance.xml,
    };
