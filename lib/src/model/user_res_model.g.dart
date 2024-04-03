// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspUserInfo _$RspUserInfoFromJson(Map<String, dynamic> json) => RspUserInfo(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : LoginRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspUserInfoToJson(RspUserInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspUserDuplicate _$RspUserDuplicateFromJson(Map<String, dynamic> json) =>
    RspUserDuplicate(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : DuplicateRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspUserDuplicateToJson(RspUserDuplicate instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

RspUserList _$RspUserListFromJson(Map<String, dynamic> json) => RspUserList(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : UserListRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspUserListToJson(RspUserList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };
