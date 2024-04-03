import 'package:json_annotation/json_annotation.dart';

part 'agent_req_model.g.dart';


@JsonSerializable()
class ReqAgentList {
  final String? rows;
  final String? page;
  final String? name;
  final String? ip;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'end_date')
  final String? endDate;

  ReqAgentList({this.rows, this.page, this.name, this.ip, this.startDate, this.endDate});

  Map<String, dynamic> toJson() => _$ReqAgentListToJson(this);
}

@JsonSerializable()
class ReqAgentCreate {
  final String? name;
  final String? ip;
  final String? create_user_id;

  ReqAgentCreate({this.name, this.ip, this.create_user_id});

  Map<String, dynamic> toJson() => _$ReqAgentCreateToJson(this);
}

@JsonSerializable()
class ReqAgentInfo {
  final String? id;

  ReqAgentInfo({this.id});

  Map<String, dynamic> toJson() => _$ReqAgentInfoToJson(this);
}

@JsonSerializable()
class ReqAgentModify {
  final int? id;
  final String? name;
  final String? ip;
  final String? update_user_id;

  ReqAgentModify({this.id, this.name,this.ip, this.update_user_id});

  Map<String, dynamic> toJson() => _$ReqAgentModifyToJson(this);
}


@JsonSerializable()
class ReqAgentDelete {
  final String? id;

  ReqAgentDelete({this.id});

  Map<String, dynamic> toJson() => _$ReqAgentDeleteToJson(this);
}
