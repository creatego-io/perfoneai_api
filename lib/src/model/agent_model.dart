import 'package:json_annotation/json_annotation.dart';

part 'agent_model.g.dart';

@JsonSerializable()
class ReqLogin {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? password;

  ReqLogin({this.userId, this.password});

  Map<String, dynamic> toJson() => _$ReqLoginToJson(this);
}

@JsonSerializable()
class RspLogin {
  final int? status;
  final String? error;
  final String? message;

  RspLogin({this.status, this.error, this.message});

  factory RspLogin.fromJson(json) => _$RspLoginFromJson(json);

  Map<String, dynamic> toJson() => _$RspLoginToJson(this);
}
