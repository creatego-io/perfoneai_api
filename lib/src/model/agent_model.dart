// import 'package:json_annotation/json_annotation.dart';
// import 'package:perfone_api/src/model/data_set.dart';
//
// part 'agent_model.g.dart';
//
// @JsonSerializable()
// class ReqLogin {
//   @JsonKey(name: 'user_id')
//   final String? userId;
//   final String? password;
//
//   ReqLogin({this.userId, this.password});
//
//   Map<String, dynamic> toJson() => _$ReqLoginToJson(this);
// }
// @JsonSerializable()
// class ReqDuplicate {
//   @JsonKey(name: 'user_id')
//   final String? userId;
//
//   ReqDuplicate({this.userId});
//
//   Map<String, dynamic> toJson() => _$ReqDuplicateToJson(this);
// }
//
// @JsonSerializable()
// class RspLogin extends ResData {
//   LoginRes? resultData;
//
//   RspLogin({
//     required super.status,
//     required super.message,
//     super.result,
//     super.timestamp,
//     super.error,
//     super.path,});
//
//   factory RspLogin.fromJson(json) {
//     RspLogin res = _$RspLoginFromJson(json);
//     res.fromJsonResult();
//     return res;
//   }
//
//   Map<String, dynamic> toJson() => _$RspLoginToJson(this);
//
//   @override
//   fromJsonResult() {
//     if(result!=null && result is Map) {
//       resultData = LoginRes.fromJson(result!);
//     }
//   }
// }
//
// class LoginRes  {
//   LoginResData? data;
//
//   LoginRes({
//     required this.data,
//   });
//
//   LoginRes.fromJson(Map json)
//       : data = LoginResData.fromJson(json['data'] ?? <String, dynamic>{});
//
//   Map<String, dynamic> toJson() {
//     var map = <String, dynamic>{};
//     map['data'] = data!.toJson();
//
//     return map;
//   }
//
// }
//
// @JsonSerializable()
// class LoginResData {
//   String? user_id;
//   String? password;
//   String? name;
//   String? company;
//   String? admin;
//   String? create_datetime;
//   String? update_user_id;
//   String? update_datetime;
//
//   LoginResData({
//     this.user_id,
//     this.password,
//     this.name,
//     this.company,
//     this.admin,
//     this.create_datetime,
//     this.update_user_id,
//     this.update_datetime,
//   });
//
//   factory LoginResData.fromJson(Map<String, dynamic> json) =>
//       _$LoginResDataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$LoginResDataToJson(this);
// }
//
