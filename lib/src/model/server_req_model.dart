import 'package:json_annotation/json_annotation.dart';

part 'server_req_model.g.dart';

@JsonSerializable()
class ReqServerList {
  final String? rows;
  final String? page;
  final String? name;
  final String? ip;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'end_date')
  final String? endDate;

  ReqServerList(
      {this.rows, this.page, this.name, this.ip, this.startDate, this.endDate});

  Map<String, dynamic> toJson() => _$ReqServerListToJson(this);
}

@JsonSerializable()
class ReqServerCreate {
  final String? name;
  final String? os;
  final String? connect_type;
  final String? type;
  final String? ip;
  final String? port;
  final String? connect_id;
  final String? connect_pwd;
  final String? description;
  final String? update_user_id;

  ReqServerCreate(
      {this.name,
      this.os,
      this.connect_type,
      this.type,
      this.ip,
      this.port,
      this.connect_id,
      this.connect_pwd,
      this.description,
      this.update_user_id});

  Map<String, dynamic> toJson() => _$ReqServerCreateToJson(this);
}

@JsonSerializable()
class ReqServerInfo {
  final int? id;

  ReqServerInfo({this.id});

  Map<String, dynamic> toJson() => _$ReqServerInfoToJson(this);
}

@JsonSerializable()
class ReqServerModify {
  final int? id;
  final String? name;
  final String? os;
  final String? connect_type;
  final String? type;
  final String? ip;
  final String? port;
  final String? connect_id;
  final String? connect_pwd;
  final String? description;
  final String? update_user_id;

  ReqServerModify(
      {this.id,
      this.name,
      this.os,
      this.connect_type,
      this.type,
      this.ip,
      this.port,
      this.connect_id,
      this.connect_pwd,
      this.description,
      this.update_user_id});

  Map<String, dynamic> toJson() => _$ReqServerModifyToJson(this);
}

@JsonSerializable()
class ReqServerDelete {
  final int? id;

  ReqServerDelete({this.id});

  Map<String, dynamic> toJson() => _$ReqServerDeleteToJson(this);
}
