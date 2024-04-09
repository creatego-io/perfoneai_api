// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageInfoModel _$PageInfoModelFromJson(Map<String, dynamic> json) =>
    PageInfoModel(
      page: json['page'] as String?,
      currentRows: json['currentRows'] as String?,
      totalRows: json['totalRows'] as String?,
    );

Map<String, dynamic> _$PageInfoModelToJson(PageInfoModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'currentRows': instance.currentRows,
      'totalRows': instance.totalRows,
    };

RspMessage _$RspMessageFromJson(Map<String, dynamic> json) => RspMessage(
      status: json['status'] as int?,
      message: json['message'] as String?,
      result: json['result'] as Map<String, dynamic>?,
      timestamp: json['timestamp'] as num?,
      error: json['error'] as String?,
      path: json['path'] as String?,
    )..resultData = json['resultData'] == null
        ? null
        : MessageRes.fromJson(json['resultData'] as Map<String, dynamic>);

Map<String, dynamic> _$RspMessageToJson(RspMessage instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
      'timestamp': instance.timestamp,
      'error': instance.error,
      'path': instance.path,
      'resultData': instance.resultData,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      user_id: json['user_id'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
      admin: json['admin'] as String?,
      create_datetime: json['create_datetime'] as String?,
      update_user_id: json['update_user_id'] as String?,
      update_datetime: json['update_datetime'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'password': instance.password,
      'name': instance.name,
      'company': instance.company,
      'admin': instance.admin,
      'create_datetime': instance.create_datetime,
      'update_user_id': instance.update_user_id,
      'update_datetime': instance.update_datetime,
    };

AgentModel _$AgentModelFromJson(Map<String, dynamic> json) => AgentModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      ip: json['ip'] as String?,
      status: json['status'] as String?,
      create_user_id: json['create_user_id'] as String?,
      create_user_name: json['create_user_name'] as String?,
      create_datetime: json['create_datetime'] as String?,
      update_user_id: json['update_user_id'] as String?,
      update_datetime: json['update_datetime'] as String?,
    );

Map<String, dynamic> _$AgentModelToJson(AgentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ip': instance.ip,
      'status': instance.status,
      'create_user_id': instance.create_user_id,
      'create_user_name': instance.create_user_name,
      'create_datetime': instance.create_datetime,
      'update_user_id': instance.update_user_id,
      'update_datetime': instance.update_datetime,
    };

ServerModel _$ServerModelFromJson(Map<String, dynamic> json) => ServerModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      os: json['os'] as String?,
      connect_type: json['connect_type'] as String?,
      ip: json['ip'] as String?,
      port: json['port'] as String?,
      connect_id: json['connect_id'] as String?,
      connect_pwd: json['connect_pwd'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      create_user_id: json['create_user_id'] as String?,
      create_user_name: json['create_user_name'] as String?,
      create_datetime: json['create_datetime'] as String?,
      update_user_id: json['update_user_id'] as String?,
      update_datetime: json['update_datetime'] as String?,
    );

Map<String, dynamic> _$ServerModelToJson(ServerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'os': instance.os,
      'connect_type': instance.connect_type,
      'ip': instance.ip,
      'port': instance.port,
      'connect_id': instance.connect_id,
      'connect_pwd': instance.connect_pwd,
      'type': instance.type,
      'description': instance.description,
      'create_user_id': instance.create_user_id,
      'create_user_name': instance.create_user_name,
      'create_datetime': instance.create_datetime,
      'update_user_id': instance.update_user_id,
      'update_datetime': instance.update_datetime,
    };

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) => ReportModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      start_datetime: json['start_datetime'] as String?,
      end_datetime: json['end_datetime'] as String?,
      create_user_id: json['create_user_id'] as String?,
      create_user_name: json['create_user_name'] as String?,
      create_datetime: json['create_datetime'] as String?,
      file_full_path: json['file_full_path'] as String?,
    );

Map<String, dynamic> _$ReportModelToJson(ReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'start_datetime': instance.start_datetime,
      'end_datetime': instance.end_datetime,
      'create_user_id': instance.create_user_id,
      'create_user_name': instance.create_user_name,
      'create_datetime': instance.create_datetime,
      'file_full_path': instance.file_full_path,
    };

TestLoadDataModel _$TestLoadDataModelFromJson(Map<String, dynamic> json) =>
    TestLoadDataModel(
      testType: json['testType'] as String?,
      testValue: json['testValue'] as int?,
      userIncreaseType: json['userIncreaseType'] as String?,
      startUser: json['startUser'] as int?,
      endUser: json['endUser'] as int?,
      rampUpUser: json['rampUpUser'] as int?,
      rampUpTerm: json['rampUpTerm'] as int?,
      rampDownUser: json['rampDownUser'] as int?,
      rampDownTerm: json['rampDownTerm'] as int?,
      monitoringCount: json['monitoringCount'] as int?,
      resultRate: json['resultRate'] as int?,
      virtualUserCount: json['virtualUserCount'] as int?,
      timeout: json['timeout'] as int?,
    );

Map<String, dynamic> _$TestLoadDataModelToJson(TestLoadDataModel instance) =>
    <String, dynamic>{
      'testType': instance.testType,
      'testValue': instance.testValue,
      'userIncreaseType': instance.userIncreaseType,
      'startUser': instance.startUser,
      'endUser': instance.endUser,
      'rampUpUser': instance.rampUpUser,
      'rampUpTerm': instance.rampUpTerm,
      'rampDownUser': instance.rampDownUser,
      'rampDownTerm': instance.rampDownTerm,
      'monitoringCount': instance.monitoringCount,
      'resultRate': instance.resultRate,
      'virtualUserCount': instance.virtualUserCount,
      'timeout': instance.timeout,
    };
