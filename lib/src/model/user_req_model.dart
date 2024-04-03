import 'package:json_annotation/json_annotation.dart';

part 'user_req_model.g.dart';

@JsonSerializable()
class ReqUserLogin {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? password;

  ReqUserLogin({this.userId, this.password});

  Map<String, dynamic> toJson() => _$ReqUserLoginToJson(this);
}

@JsonSerializable()
class ReqUserDuplicate {
  @JsonKey(name: 'user_id')
  final String? userId;

  ReqUserDuplicate({this.userId});

  Map<String, dynamic> toJson() => _$ReqUserDuplicateToJson(this);
}

@JsonSerializable()
class ReqUserJoin {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? password;
  final String? name;
  final String? company;

  ReqUserJoin({this.userId, this.password,this.name, this.company});

  Map<String, dynamic> toJson() => _$ReqUserJoinToJson(this);
}

@JsonSerializable()
class ReqUserList {
  final String? rows;
  final String? page;
  final String? name;
  @JsonKey(name: 'start_date')
  final String? startDate;
  @JsonKey(name: 'end_date')
  final String? endDate;


  ReqUserList({this.rows, this.page, this.name, this.startDate, this.endDate});

  Map<String, dynamic> toJson() => _$ReqUserListToJson(this);
}

@JsonSerializable()
class ReqUserInfo {
  @JsonKey(name: 'user_id')
  final String? userId;

  ReqUserInfo({this.userId});

  Map<String, dynamic> toJson() => _$ReqUserInfoToJson(this);
}
@JsonSerializable()
class ReqUserPwdModify {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? password;
  final String? new_password;
  final String? update_user_id;

  ReqUserPwdModify({this.userId, this.password,this.new_password, this.update_user_id});

  Map<String, dynamic> toJson() => _$ReqUserPwdModifyToJson(this);
}
@JsonSerializable()
class ReqUserInfoModify {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? password;
  final String? company;
  final String? update_user_id;

  ReqUserInfoModify({this.userId, this.password,this.update_user_id, this.company});

  Map<String, dynamic> toJson() => _$ReqUserInfoModifyToJson(this);
}
@JsonSerializable()
class ReqUserDelete {
  @JsonKey(name: 'user_id')
  final String? userId;

  ReqUserDelete({this.userId});

  Map<String, dynamic> toJson() => _$ReqUserDeleteToJson(this);
}

@JsonSerializable()
class ReqUserPwdReset {
  @JsonKey(name: 'user_id')
  final String? userId;
  final String? update_user_id;

  ReqUserPwdReset({this.userId, this.update_user_id,});

  Map<String, dynamic> toJson() => _$ReqUserPwdResetToJson(this);
}