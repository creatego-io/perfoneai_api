// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_req_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReqUserLogin _$ReqUserLoginFromJson(Map<String, dynamic> json) => ReqUserLogin(
      userId: json['user_id'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ReqUserLoginToJson(ReqUserLogin instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'password': instance.password,
    };

ReqUserDuplicate _$ReqUserDuplicateFromJson(Map<String, dynamic> json) =>
    ReqUserDuplicate(
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$ReqUserDuplicateToJson(ReqUserDuplicate instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
    };

ReqUserJoin _$ReqUserJoinFromJson(Map<String, dynamic> json) => ReqUserJoin(
      userId: json['user_id'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$ReqUserJoinToJson(ReqUserJoin instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'password': instance.password,
      'name': instance.name,
      'company': instance.company,
    };

ReqUserList _$ReqUserListFromJson(Map<String, dynamic> json) => ReqUserList(
      rows: json['rows'] as String?,
      page: json['page'] as String?,
      name: json['name'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
    );

Map<String, dynamic> _$ReqUserListToJson(ReqUserList instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'page': instance.page,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
    };

ReqUserInfo _$ReqUserInfoFromJson(Map<String, dynamic> json) => ReqUserInfo(
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$ReqUserInfoToJson(ReqUserInfo instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
    };

ReqUserPwdModify _$ReqUserPwdModifyFromJson(Map<String, dynamic> json) =>
    ReqUserPwdModify(
      userId: json['user_id'] as String?,
      password: json['password'] as String?,
      new_password: json['new_password'] as String?,
      update_user_id: json['update_user_id'] as String?,
    );

Map<String, dynamic> _$ReqUserPwdModifyToJson(ReqUserPwdModify instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'password': instance.password,
      'new_password': instance.new_password,
      'update_user_id': instance.update_user_id,
    };

ReqUserInfoModify _$ReqUserInfoModifyFromJson(Map<String, dynamic> json) =>
    ReqUserInfoModify(
      userId: json['user_id'] as String?,
      password: json['password'] as String?,
      update_user_id: json['update_user_id'] as String?,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$ReqUserInfoModifyToJson(ReqUserInfoModify instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'password': instance.password,
      'company': instance.company,
      'update_user_id': instance.update_user_id,
    };

ReqUserDelete _$ReqUserDeleteFromJson(Map<String, dynamic> json) =>
    ReqUserDelete(
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$ReqUserDeleteToJson(ReqUserDelete instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
    };

ReqUserPwdReset _$ReqUserPwdResetFromJson(Map<String, dynamic> json) =>
    ReqUserPwdReset(
      userId: json['user_id'] as String?,
      update_user_id: json['update_user_id'] as String?,
    );

Map<String, dynamic> _$ReqUserPwdResetToJson(ReqUserPwdReset instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'update_user_id': instance.update_user_id,
    };
