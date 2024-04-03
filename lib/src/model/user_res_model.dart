import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

import 'common_model.dart';

part 'user_res_model.g.dart';

@JsonSerializable()
class RspUserInfo extends ResData {
  LoginRes? resultData;

  RspUserInfo({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspUserInfo.fromJson(json) {
    RspUserInfo res = _$RspUserInfoFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspUserInfoToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = LoginRes.fromJson(result!);
    }
  }
}

class LoginRes {
  UserModel? data;

  LoginRes({
    required this.data,
  });

  LoginRes.fromJson(Map json)
      : data = UserModel.fromJson(json['data'] ?? <String, dynamic>{});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['data'] = data!.toJson();

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class RspUserDuplicate extends ResData {
  DuplicateRes? resultData;

  RspUserDuplicate({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspUserDuplicate.fromJson(json) {
    RspUserDuplicate res = _$RspUserDuplicateFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspUserDuplicateToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = DuplicateRes.fromJson(result!);
    }
  }
}

class DuplicateRes {
  String? is_duplicate;
  String? message;

  DuplicateRes({
    this.is_duplicate,
    this.message,
  });

  DuplicateRes.fromJson(Map json)
      : is_duplicate = json['is_duplicate'],
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['is_duplicate'] = is_duplicate;
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class RspUserList extends ResData {
  UserListRes? resultData;

  RspUserList({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspUserList.fromJson(json) {
    RspUserList res = _$RspUserListFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspUserListToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = UserListRes.fromJson(result!);
    }
  }
}

class UserListRes {
  List<UserModel?>? data;
  PageInfoModel? pageInfo;

  UserListRes({
    required this.data,
    required this.pageInfo,
  });

  UserListRes.fromJson(Map json)
      : data = json['Data'] == null
            ? <UserModel>[]
            : json['Data']
                .map<UserModel>((json) => UserModel.fromJson(json))
                .toList(),
        pageInfo =
            PageInfoModel.fromJson(json['pageInfo'] ?? <String, dynamic>{});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    List list = [];
    if (data != null) {
      for (UserModel? item in data!) {
        list.add(item?.toJson());
      }
    }
    map['data'] = list;
    map['pageInfo'] = pageInfo!.toJson();

    return map;
  }
}
