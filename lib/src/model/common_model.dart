import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

part 'common_model.g.dart';
@JsonSerializable()
class PageInfoModel {
  String? page;
  String? currentRows;
  String? totalRows;

  PageInfoModel({
    this.page,
    this.currentRows,
    this.totalRows
  });

  factory PageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PageInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


@JsonSerializable()
class RspMessage extends ResData {
  MessageRes? resultData;

  RspMessage({
    required super.status,
    required super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,});

  factory RspMessage.fromJson(json) {
    RspMessage res = _$RspMessageFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspMessageToJson(this);

  @override
  fromJsonResult() {
    if(result!=null && result is Map) {
      resultData = MessageRes.fromJson(result!);
    }
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

class MessageRes  {
  String? message;

  MessageRes({
    this.message,
  });

  MessageRes.fromJson(Map json)
      : message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class UserModel {
  String? user_id;
  String? password;
  String? name;
  String? company;
  String? admin;
  String? create_datetime;
  String? update_user_id;
  String? update_datetime;

  UserModel({
    this.user_id,
    this.password,
    this.name,
    this.company,
    this.admin,
    this.create_datetime,
    this.update_user_id,
    this.update_datetime,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class AgentModel {
  num? id;
  String? name;
  String? ip;
  String? status;
  String? create_user_id;
  String? create_user_name;
  String? create_datetime;
  String? update_user_id;
  String? update_datetime;


  AgentModel({
    this.id,
    this.name,
    this.ip,
    this.status,
    this.create_user_id,
    this.create_user_name,
    this.create_datetime,
    this.update_user_id,
    this.update_datetime,
  });

  factory AgentModel.fromJson(Map<String, dynamic> json) =>
      _$AgentModelFromJson(json);

  Map<String, dynamic> toJson() => _$AgentModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
@JsonSerializable()
class ServerModel {
  num? id;
  String? name;
  String? os;
  String? connect_type;
  String? ip;
  String? port;
  String? connect_id;
  String? connect_pwd;
  String? type;
  String? description;
  String? create_user_id;
  String? create_user_name;
  String? create_datetime;
  String? update_user_id;
  String? update_datetime;


  ServerModel({
      this.id,
      this.name,
      this.os,
      this.connect_type,
      this.ip,
      this.port,
      this.connect_id,
      this.connect_pwd,
      this.type,
      this.description,
      this.create_user_id,
      this.create_user_name,
      this.create_datetime,
      this.update_user_id,
      this.update_datetime});

  factory ServerModel.fromJson(Map<String, dynamic> json) =>
      _$ServerModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServerModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class ReportModel {
  num? id;
  String? name;
  String? status;
  String? start_datetime;
  String? end_datetime;
  String? create_user_id;
  String? create_user_name;
  String? create_datetime;
  String? file_full_path;


  ReportModel({
    this.id,
    this.name,
    this.status,
    this.start_datetime,
    this.end_datetime,
    this.create_user_id,
    this.create_user_name,
    this.create_datetime,
    this.file_full_path
  });

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReportModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}