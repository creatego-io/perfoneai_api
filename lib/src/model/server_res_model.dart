import 'package:json_annotation/json_annotation.dart';
import 'package:perfone_api/src/model/data_set.dart';

import 'common_model.dart';

part 'server_res_model.g.dart';

@JsonSerializable()
class RspServerList extends ResData {
  ServerListRes? resultData;

  RspServerList({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspServerList.fromJson(json) {
    RspServerList res = _$RspServerListFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspServerListToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = ServerListRes.fromJson(result!);
    }
  }
}

class ServerListRes {
  List<ServerModel?>? data;
  PageInfoModel? pageInfo;

  ServerListRes({
    required this.data,
    required this.pageInfo,
  });

  ServerListRes.fromJson(Map json)
      : data = json['data'] == null
            ? <ServerModel>[]
            : json['data']
                .map<ServerModel>((json) => ServerModel.fromJson(json))
                .toList(),
        pageInfo =
            PageInfoModel.fromJson(json['pageInfo'] ?? <String, dynamic>{});

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    List list = [];
    if (data != null) {
      for (ServerModel? item in data!) {
        list.add(item?.toJson());
      }
    }
    map['data'] = list;
    map['pageInfo'] = pageInfo!.toJson();

    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class RspServerInfo extends ResData {
  ServerInfoRes? resultData;

  RspServerInfo({
    super.status,
    super.message,
    super.result,
    super.timestamp,
    super.error,
    super.path,
  });

  factory RspServerInfo.fromJson(json) {
    RspServerInfo res = _$RspServerInfoFromJson(json);
    res.fromJsonResult();
    return res;
  }

  @override
  Map<String, dynamic> toJson() => _$RspServerInfoToJson(this);

  @override
  fromJsonResult() {
    if (result != null && result is Map) {
      resultData = ServerInfoRes.fromJson(result!);
    }
  }
}

class ServerInfoRes {
  ServerModel? data;
  String? message;

  ServerInfoRes({
    required this.data,
    required this.message,
  });

  ServerInfoRes.fromJson(Map json)
      : data = ServerModel.fromJson(json['data'] ?? <String, dynamic>{}),
        message = json['message'];

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['data'] = data!.toJson();
    map['message'] = message;
    return map;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
