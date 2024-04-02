// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqLogin _$ReqLoginFromJson(Map<String, dynamic> json) => ReqLogin(
      userId: json['user_id'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ReqLoginToJson(ReqLogin instance) => <String, dynamic>{
      'user_id': instance.userId,
      'password': instance.password,
    };

RspLogin _$RspLoginFromJson(Map<String, dynamic> json) => RspLogin(
      status: json['status'] as int?,
      error: json['error'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RspLoginToJson(RspLogin instance) => <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
    };
